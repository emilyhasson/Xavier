//
//  QuoteView.swift
//  Xavier
//
//  Created by Ajith Senthil on 11/4/23.
//

import SwiftUI

struct QuoteView: View {
    let quote: Quote
    var body: some View {
        ZStack {
            Color(red: 237/255, green: 221/255, blue: 211/255)
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack {
                    Text(quote.content)
                        .foregroundColor(Color(red: 41/255, green:21/255, blue:8/255))
                        .fontWeight(.bold)
                        .padding()
                    Spacer()
                    HStack {
                        Text("Source: ")
                            .foregroundColor(Color(red: 110/255, green: 81/255, blue: 60/255))
                        if let source = quote.source {
                            if let source = sources.first(where: { $0.id == source }) {
                                Text(source.title)
                                    .foregroundColor(Color(red: 110/255, green: 81/255, blue: 60/255))
                            }
                        }
                        Spacer()
                    } //hstack
                    .padding(.horizontal)
                    HStack {
                        Text("Page Number: ")
                            .foregroundColor(Color(red: 110/255, green: 81/255, blue: 60/255))
                        Text(quote.pageNum)
                            .foregroundColor(Color(red: 110/255, green: 81/255, blue: 60/255))
                        Spacer()
                    } //hstack
                    .padding(.horizontal)
                    Spacer()
                    Text("Notes")
                        .foregroundColor(Color(red: 110/255, green: 81/255, blue: 60/255))
                        .font(.system(size: 24, weight: .bold))
                        .padding()
                    TextEditBox(initialText: "Any notes you add will go here. \nThis is an example of a multi-line string. xxxxxxxxxxxxxxxxxxxxxxx\nxxxx \n\netc.", message:"")
                        .padding(.horizontal)

                    
                    
                } //vstack
            } //scrollview
            VStack {
                Spacer()
                    HStack {
                        Spacer()
                        Text("Edit Page")
                            .foregroundColor(Color(red: 110/255, green: 81/255, blue: 60/255))
                            .fontWeight(.bold)
                        Spacer()
                    } //hstack

            } // vstack
            
        } //zstack
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView(quote: Quote(id:0, content:
                        """
                        Te occidere possunt sed te edere non possunt nefas est. (Roughly, 'They can kill you, but the legalities of eating you are quite a bit dicier.')
                        """,
                               source: 0, pageNum: "185",
                               notes: "Any notes you add will go here. \nThis is an example of a multi-line string. xxxxxxxxxxxxxxxxxxxxxxx\nxxxx \n\netc."))
    }
}
