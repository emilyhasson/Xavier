//
//  OCR.swift
//  Xavier
//
//  Created by Daniel Philipov on 11/4/23.
//

import SwiftUI
import Vision

class OCRViewModel: ObservableObject {
    @Published var recognizedText: String = ""
    @Published var isProcessing: Bool = false

    func recognizeText(from image: UIImage?) {
        guard let ciImage = CIImage(image: image!) else {
            self.recognizedText = "Unable to convert to CIImage."
            return
        }

        let textRecognitionRequest = VNRecognizeTextRequest { [weak self] (request, error) in
            guard let observations = request.results as? [VNRecognizedTextObservation] else {
                self?.recognizedText = "Error: \(error?.localizedDescription ?? "Unknown error.")"
                return
            }
            
            let recognizedStrings = observations.compactMap { observation in
                return observation.topCandidates(1).first?.string
            }
            
            // join strings and remove newlines
            let textResult = self?.sanitizeText(recognizedStrings.joined(separator: "\n")) ?? ""
            
            
            DispatchQueue.main.async {
//                self?.recognizedText = recognizedStrings.joined(separator: "\n")
                self?.recognizedText = textResult
                self?.isProcessing = false
            }
        }
        
        textRecognitionRequest.recognitionLevel = .accurate
        
        let handler = VNImageRequestHandler(ciImage: ciImage, orientation: .up)
        
        DispatchQueue.global(qos: .userInitiated).async {
            do {
                self.isProcessing = true
                try handler.perform([textRecognitionRequest])
            } catch {
                DispatchQueue.main.async {
                    self.recognizedText = "Error: \(error.localizedDescription)"
                    self.isProcessing = false
                }
            }
        }
    }
    
    private func sanitizeText(_ text: String) -> String {
        return text.replacingOccurrences(of: "\n", with: " ")
    }
}

