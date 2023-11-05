//
//  SourceView.swift
//  Xavier
//
//  Created by Ajith Senthil on 11/4/23.
//

import SwiftUI

struct SourceView: View {
    let source: Source
    var body: some View {
        ZStack {
                Color(red: 237/255, green: 221/255, blue: 211/255)
                .edgesIgnoringSafeArea(.all)
                ScrollView {
                    SourceQuotePreview(source: source)
                        .padding()
                }
        } // ZStack
        .navigationBarTitle(source.title)

    }
}

struct SourceView_Previews: PreviewProvider {
    static var previews: some View {
        SourceView(source: Source(id: 0,
                                  title: "Infinite Jest",
                                  quotes: [0, 1],
                                  imageName: "blue"
                                 ))
    }
}
