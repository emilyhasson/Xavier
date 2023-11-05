//
//  EditQuoteView.swift
//  Xavier
//
//  Created by Ajith Senthil on 11/4/23.
//

import SwiftUI


struct EditQuoteView: View {
    let quote: String
    var body: some View {
        ZStack {
            Color.light
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack {
                    HStack {
                        Text("Quote")
                            .foregroundColor(Color.medium)
                            .font(.system(size: 24))
                            .padding(.horizontal)
                            .padding(.top)
                        Spacer()
                    }//hstack
                    TextEditBox(initialText: quote, message: "")
                        .padding(.horizontal)
                    HStack {
                        Text("Source")
                            .foregroundColor(Color.medium)
                            .font(.system(size: 24))
                            .padding()
                        Spacer()
                        DropdownView()
                    }//hstack
                    HStack {
                        Text("Page Number")
                            .foregroundColor(Color.medium)
                            .font(.system(size: 24))
                            .padding()
                        TextEditBox(initialText: "#", message: "")
                            .padding(.horizontal)
                    }
                    TextEditBox(initialText: "", message: "Add some notes, if you like.")
                        .padding()
                }//vstack
                Text("Done")
                    .font(.system(size:24, weight: .bold))
                    .foregroundColor(Color.dark)
            }//scrollview
        }//zstack
    }
}

struct EditQuoteView_Previews: PreviewProvider {
    static var previews: some View {
        EditQuoteView(quote: "The quote would go here but im lazy he quote would go  here but im lazy vhe quote would go here but im lazy vhe quote would go  here but im lazy he quote would go here but im lazy he quote would go  here but im lazy he quote would go  here but im lazy he quote would go  here but im lazy vhe quote would go  here but im lazy vhe quote would go  here but im lazy he quote would go  here but im lazy.")
    }
}
