//
//  ListView.swift
//  Xavier
//
//  Created by Ajith Senthil on 11/3/23.
//

import SwiftUI

struct ListView: View {
    var body: some View {
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
                                    .clipped()
                                    .cornerRadius(8)
                                HStack {
                                    Text(num.title)
                                        .foregroundColor(Color.light)
                                        .font(.system(size: 24, weight: .semibold))
                                        .multilineTextAlignment(.center)
                                        .padding()
                                    Spacer()
                                    Image(systemName: "heart")
                                        .font(.system(size: 40))
                                        .foregroundColor(Color.light)
                                        .padding()
                                }
                            }
                            Spacer()
                        }
                    })
                }
            }
            
    }
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
