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
                ScrollView {
                    QuotePreview(collection: collection)
                        .padding()
                }

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
