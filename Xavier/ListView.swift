//
//  ListView.swift
//  Xavier
//
//  Created by Ajith Senthil on 11/3/23.
//

import SwiftUI

struct ListView: View {
    var body: some View {
//        NavigationView {
            VStack {
                ForEach(sources) { num in
                    NavigationLink( destination: SourceView(source: num),
                                    label: {
                        HStack(spacing: 8) {
                            Spacer()
                            ZStack {
                                Image("sepia-h")
                                    .resizable()
                                    .scaledToFit()
    //                                .frame(width: 180)
                                    .clipped()
                                    .cornerRadius(8)
    //                                .padding()
                                Text(num.title)
                                    .foregroundColor(Color(red: 237/255, green: 221/255, blue: 211/255))
                                    .font(.system(size: 16, weight: .semibold))
                                    .multilineTextAlignment(.center)
                            }
                            Spacer()
                        }
                    })
                }
            }
            
//        }
    }
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
