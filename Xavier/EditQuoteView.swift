//
//  EditQuoteView.swift
//  Xavier
//
//  Created by Ajith Senthil on 11/4/23.
//

import SwiftUI

struct EditQuoteView: View {
//    let quote: String
    @State private var pagenum: String = ""
    @State private var quote_editable: String
    @State private var isEditing = false
    
    init(quote: String) {
            self._quote_editable = State(initialValue: quote)
        }
    
    var body: some View {
        ZStack {
            Color(red: 19/255, green: 22/255, blue: 28/255)
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                
                VStack {
                    HStack {
                        Text("Quote")
                            .foregroundColor(.white)
                            .font(.system(size: 24, weight: .bold))
                            .padding()
                        Spacer()
                    } //hstack
                    ZStack {
                        RoundedRectangle(cornerRadius: 8) // Creating a RoundedRectangle with rounded corners
                            .stroke(Color.gray, lineWidth: 1)
//                        Text(quote)
//                            .foregroundColor(.white)
//                            .fontWeight(.bold)
////                            .padding()
//                        TextField("Type your quote here", text: $quote_editable)
//                            .font(.system(size: 24, weight: .bold))
//                            .padding(.leading)
                        VStack {
                                   if isEditing {
                                       ZStack {
                                           TextField("Edit text", text: $quote_editable)
                                               .foregroundColor(.white)
                                               .padding()
//                                               .onTapGesture {
//                                                   UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
//                                               }
                                           Text(quote_editable)
                                               .opacity(0)
                                               .padding(.all, 8)
                                           }
                                   } else {
                                       Text(quote_editable)
                                           .foregroundColor(.white)
                                           .fontWeight(.bold)
                                           .multilineTextAlignment(.center) // Center-align multiline text
                                           .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                                           .padding()
                                           .onTapGesture {
                                               isEditing = true
                                           }
                                   }
                               }
                    }
                    Spacer()
                    HStack {
                        Text("Source")
                            .foregroundColor(.white)
                            .font(.system(size: 24, weight: .bold))
                            .padding()
                        Spacer()
                    } //hstack
                    RoundedRectangle(cornerRadius: 8)                         .stroke(Color.gray, lineWidth: 1) //dropdown menu
                        .frame(height:30)
                        .padding(.bottom)
                    
                    HStack {
                        Text("Page Number")
                            .foregroundColor(.white)
                            .font(.system(size: 24, weight: .bold))
//                            .padding()
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)                         .stroke(Color.gray, lineWidth: 1)
                            TextField("#", text: $pagenum)
                                .font(.system(size: 24, weight: .bold))
                                .padding(.leading)
                        }
                        Spacer()
                    } //hstack
                    Spacer()
                    HStack {
                        Text("Notes")
                            .foregroundColor(.white)
                            .font(.system(size: 24, weight: .bold))
                            .padding()
                        Spacer()
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 8) // Creating a RoundedRectangle with rounded corners
                            .stroke(Color.gray, lineWidth: 1) // Applying a white stroke with a line width of 2
//                            .frame(height: 350)
                       
                            
                        ScrollView {
                            HStack {
                                Text("Any notes you add will go here sssssssssssssssssssssssssssssssss s s s s  ss  s   s f f f f f f f f f ffjfffffffffjfjfjffsdndfdkjnfkjsdnfknkjdbsgkkfnvkrjnfawjfkkss \n ssdf \n\nsdad")
                                    .foregroundColor(.white)
                                    .padding()
                                Spacer()
                            }
                        } //scrollview
                    }//zstack
                } //vstack
            } //scrollview
        }
    }
}

struct EditQuoteView_Previews: PreviewProvider {
    static var previews: some View {
        EditQuoteView(quote: "The quote would go here but im lazy he quote would go  here but im lazy vhe quote would go here but im lazy vhe quote would go  here but im lazy he quote would go here but im lazy he quote would go  here but im lazy he quote would go  here but im lazy he quote would go  here but im lazy vhe quote would go  here but im lazy vhe quote would go  here but im lazy he quote would go  here but im lazy.")
    }
}
