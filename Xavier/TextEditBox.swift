//
//  TextEditBox.swift
//  Xavier
//
//  Created by Ajith Senthil on 11/4/23.
//

import SwiftUI

struct TextEditBox: View {
    @State private var text = ""
    
    init(initialText: String = "") {
            self._text = State(initialValue: initialText)
        }
    
    var body: some View {
        List {
            Text("Enter the message")
            ZStack {
                TextEditor(text: $text)
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
        TextEditBox(initialText: "Initial text")
    }
}
