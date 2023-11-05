//
//  ImageProcessingView.swift
//  Xavier
//
//  Created by Ajith Senthil on 11/4/23.
//

import SwiftUI
import Vision

struct ImageProcessingView: View {
    @StateObject private var ocrViewModel = OCRViewModel()
    var image: UIImage?

    var body: some View {
        ZStack {
            Color.light.edgesIgnoringSafeArea(.all)
            if let uiImage = image {
                VStack {
                    Image(uiImage: uiImage)
                        .resizable()
                        .scaledToFit() // Adjust the size as needed
                        .padding()
                    if ocrViewModel.isProcessing {
                        LoadingAnimation()
                            .padding(.top)
                    } else{
                        ScrollView {
                            Text(ocrViewModel.recognizedText)
                                .padding()
                        }
                        NavigationLink (destination:
                                            EditQuoteView(quote: ocrViewModel.recognizedText),
                                        label: {
                                            Text("Next >")
                        })
                    }
                    
                    Spacer()
                    
                    
                }//vstack
                
                .onAppear {
                    ocrViewModel.recognizeText(from: uiImage)
                }
                
            } else {
                Text("Error: No image available").foregroundColor(.white)
            }
        }//zstack
    }
    
    
    
}

struct ImageProcessingView_Previews: PreviewProvider {
    static var previews: some View {
        ImageProcessingView()
    }
}
