//
//  DropdownView.swift
//  Xavier
//
//  Created by Ajith Senthil on 11/5/23.
//
import SwiftUI

struct DropdownView: View {
    @State private var selectedItem = ""
    let options = ["Infinite Jest", "Wuthering Heights", "Add New"] // TODO programmatically.

    var body: some View {
        Menu {
            ForEach(options, id: \.self) { option in
                Button(action: {
                    self.selectedItem = option
                }) {
                    Text(option)
                }
            }
        } label: {
            HStack {
                Text(selectedItem)
                Image(systemName: "chevron.down") // You can change this icon
                    .imageScale(.large)
            }
            .padding()
            .background(Color.gray.opacity(0.1)) // Slightly gray background
            .cornerRadius(8)
        }
    }
}

struct DropdownView_Previews: PreviewProvider {
    static var previews: some View {
        DropdownView()
    }
}
