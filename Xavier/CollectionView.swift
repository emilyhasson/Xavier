//
//  CollectionView.swift
//  Xavier
//
//  Created by Ajith Senthil on 11/3/23.
//

import SwiftUI

struct CollectionView: View {
    let collection: Collection
    var body: some View {
        ZStack {
            Color(red: 237/255, green: 221/255, blue: 211/255)
                .edgesIgnoringSafeArea(.all)
//                VStack {
//                    Rectangle()
//                        .edgesIgnoringSafeArea(.top)
//                        .foregroundColor(Color(red: 19/255, green: 22/255, blue: 28/255))
//                        .padding(.bottom)
//                        .frame(height:50)
//                    Spacer()
                ScrollView {
//                    ListView() // to add in subcollections
//                    Spacer()
                    QuotePreview(collection: collection)
                        .padding()
                }
//                }
//                VStack {
//                    Text("Collection Name")
//                        .font(.largeTitle)
//                        .foregroundColor(.white)
//                        .fontWeight(.bold)
//                    Spacer()
//                }
        } // ZStack
        .navigationBarTitle(collection.title)

    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView(collection: Collection(id: 1,
                                  title: "Funny",
//                                  subCollections:
//                                    [Collection(id: 4, title: "IJ", quotes: [0,1], imageName: "blue-h")],
                                  quotes: [0, 1],
                                  imageName: "blue"
                                 ))
    }
}
