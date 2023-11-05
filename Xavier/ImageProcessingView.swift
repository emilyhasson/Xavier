//
//  ImageProcessingView.swift
//  Xavier
//
//  Created by Ajith Senthil on 11/4/23.
//

import SwiftUI

struct ImageProcessingView: View {
    var image: UIImage?

    var body: some View {
        ZStack {
            Color(red: 237/255, green: 221/255, blue: 211/255).edgesIgnoringSafeArea(.all)
            if let uiImage = image {
                VStack {
                    Image(uiImage: uiImage)
                        .resizable()
                        .scaledToFit() // Adjust the size as needed
                        .padding()
                    LoadingAnimation()
                        .padding(.top)
                    Spacer()
                }//vstack
                
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
