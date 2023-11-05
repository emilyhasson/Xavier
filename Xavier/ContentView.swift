//
//  ContentView.swift
//  Xavier
//
//  Created by Ajith Senthil on 11/2/23.
//

import SwiftUI

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
                        HStack {
                            Image(systemName: "line.horizontal.3")
                                .font(Font.title.weight(.bold))
                                .padding(.leading)
                                .foregroundColor(Color.medium)
                            Spacer()
                            Text("Welcome")
                                .font(.largeTitle)
                                .foregroundColor(Color.dark)
                            Spacer()
                            Button(action: { showingImagePicker = true }) {
                                Image(systemName: "plus")
                                    .font(Font.title.weight(.bold))
                                    .padding(.trailing)
                                    .foregroundColor(Color.dark)
                            } // Button
                                
                        } //hstack
                        Carousel(categoryName: "Your Collections")
                        HStack {
                            Text("Sources")
                                .foregroundColor(Color.dark)
                                .font(.system(size: 24))
                                .padding(.leading)
                                .padding(.top)
                            Spacer()
                        }//hstack
                        Spacer()
                        ListView()
                    }//vstack
                }//scrollview
                .background(Color.light)
                .navigationBarHidden(true) // Hide the default navigation bar
                .navigationBarTitle("") // Set an empty navigation title
                .navigationViewStyle(StackNavigationViewStyle()) // For full screen appearance
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
