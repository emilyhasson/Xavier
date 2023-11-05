//
//  SourceQuotePreview.swift
//  Xavier
//
//  Created by Ajith Senthil on 11/4/23.
//

// light: Color(red: 237/255, green: 221/255, blue: 211/255)
// med: Color(red: 110/255, green: 81/255, blue: 60/255)
// dark: Color(red: 41/255, green:21/255, blue:8/255)


import SwiftUI

struct SourceQuotePreview: View {
    let source: Source
    var body: some View {
        HStack {
            VStack {
                if let quoteIDs = source.quotes {
                    ForEach(quoteIDs, id: \.self) { quoteID in
                        if let quote = quotes.first(where: { $0.id == quoteID }) {
                            NavigationLink( destination: QuoteView(quote: quote), label: {
                            VStack {
                                
                                HStack {
                                    Text(truncate(quote: quote.content, len: 50))
                                        .multilineTextAlignment(.leading)
                                        .padding(.top)
                                        .foregroundColor(Color(red: 41/255, green:21/255, blue:8/255))
                                    Spacer()
                                }
                                HStack {
                                    Text("source")
                                        .foregroundColor(Color(red: 110/255, green: 81/255, blue: 60/255))
                                        .font(.footnote)
                                    Text(" | ")
                                        .foregroundColor(Color(red: 110/255, green: 81/255, blue: 60/255))
                                        .font(.footnote)
                                    Text("page num")
                                        .foregroundColor(Color(red: 110/255, green: 81/255, blue: 60/255))
                                        .font(.footnote)
                                    Spacer()
                                }
                                
                            } //VStack
                            })
                        }
                    } // ForEach
                } else {
                    
                }
            } // VStack
//            Spacer()
        } // HStack
        
    }
    
    private func truncate(quote: String, len: Int) -> String {
        if quote.count > len {
            return String(quote.prefix(len)) + "..."
        } else {
            return quote
        }
    }
}

struct SourceQuotePreview_Previews: PreviewProvider {
    static var previews: some View {
        SourceQuotePreview(source: Source(id: 0,
                                          title: "Inspirational",
                                          quotes: [0, 1],
                                          imageName: "blue"
                                         ))
    }
}