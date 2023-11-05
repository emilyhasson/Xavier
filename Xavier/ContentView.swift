//
//  ContentView.swift
//  Xavier
//
//  Created by Ajith Senthil on 11/2/23.
//

import SwiftUI

// light: Color(red: 237/255, green: 221/255, blue: 211/255)
// med: Color(red: 110/255, green: 81/255, blue: 60/255)
// dark: Color(red: 41/255, green:21/255, blue:8/255)

struct ContentView: View {
    @State private var image: Image?
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    @State private var shouldNavigate = false

    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    VStack (spacing: 8) {
                        Text("Welcome")
                            .font(.largeTitle)
                            .foregroundColor(Color(red: 41/255, green:21/255, blue:8/255))
                        Carousel(categoryName: "Your Collections")
                        HStack {
                            Text("Sources")
                                .foregroundColor(Color(red: 41/255, green:21/255, blue:8/255))
                                .font(.system(size: 24))
                                .padding(.leading)
                                .padding(.top)
                            Spacer()
                        }//hstack
                        Spacer()
                        ListView()
                    }//vstack
                }//scrollview
                .background(Color(red: 237/255, green: 221/255, blue: 211/255))
                .navigationBarHidden(true) // Hide the default navigation bar
                .navigationBarTitle("") // Set an empty navigation title
                .navigationViewStyle(StackNavigationViewStyle()) // For full screen appearance
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: { showingImagePicker = true }) {
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .foregroundColor(Color(red: 41/255, green:21/255, blue:8/255))
                                .background(Color(red: 237/255, green: 221/255, blue: 211/255))
                                .clipShape(Circle())
                        } // Button
                        .padding()
                    }//hstack
                    
//                    ZStack {
//                        Rectangle()
//                            .fill(.secondary)
//                        image?
//                            .resizable()
//                             .scaledToFit()
//                    }.onTapGesture { showingImagePicker = true }
                    
                }//vstack
                .onChange(of: inputImage) { _ in loadImage() }
                .sheet(isPresented: $showingImagePicker) { ImagePicker(image: $inputImage) }
                
                .background(
                                NavigationLink(
                                    destination: ImageProcessingView(image: inputImage),
                                    isActive: $shouldNavigate,
                                    label: {
                                        EmptyView()
                                    }
                                )
                            )
            } //zstack
        }//navigationview
    }
    
    func loadImage() {
            guard let inputImage = inputImage else { return }
            
            image = Image(uiImage: inputImage)
            shouldNavigate = true

//            let beginImage = CIImage(image: inputImage)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
