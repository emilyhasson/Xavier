//
//  LoadingAnimation.swift
//  Xavier
//
//  Created by Ajith Senthil on 11/4/23.
//

import SwiftUI

struct LoadingAnimation: View {
    
    @State private var isLoading = false

        var body: some View {
            ZStack {
                VStack {
                    Text("Loading")
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(Color(red: 41/255, green:21/255, blue:8/255))
                        .bold()
                        .offset(x: 0, y: -25)

                    HStack {
                        Spacer() // Spacer before the loading bar to center it
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color(.systemGray5), lineWidth: 3)
                                .frame(width: 250, height: 3)

                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color(red: 41/255, green:21/255, blue:8/255), lineWidth: 3)
                                .frame(width: 30, height: 3)
                                .offset(x: isLoading ? 110 : -110, y: 0)
                                // Apply the animation to the moving bar
                                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false), value: isLoading)
                        }

                        Spacer() // Spacer after the loading bar to center it
                    }
                }
            }
            .onAppear() {
                self.isLoading = true
            }
        }
}

struct LoadingAnimation_Previews: PreviewProvider {
    static var previews: some View {
        LoadingAnimation()
    }
}
