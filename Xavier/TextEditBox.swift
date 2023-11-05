//
//  TextEditBox.swift
//  Xavier
//
//  Created by Ajith Senthil on 11/4/23.
//

import SwiftUI

struct TextEditBox: View {
    var message: String
    @State private var text = ""
    
    init(initialText: String = "", message: String = "Enter your text") {
            self._text = State(initialValue: initialText)
            self.message = message
        }
    
    var body: some View {
        VStack {
            Text(message)
                .foregroundColor(Color.medium)
            ZStack {
                TextEditor(text: $text)
                    .frame(minHeight: 20, maxHeight: 500)
                    .background(Color.light)
                Text(text)
                    .opacity(text.isEmpty ? 1 : 0)
                    .opacity(0)
                    .padding(.all, 8)
            }
            .shadow(radius: 1)
        }
        
    }
}

struct TextEditBox_Previews: PreviewProvider {
    static var previews: some View {
        TextEditBox(initialText: "Initial text", message: "enter some text")
    }
}
