//
//  Carousel.swift
//  Xavier
//
//  Created by Ajith Senthil on 11/2/23.
//

import SwiftUI

struct Carousel: View {
    let categoryName: String
    
    var body: some View {
        
        VStack {
            HStack {
                Text(categoryName)
                    .foregroundColor(Color(red: 41/255, green:21/255, blue:8/255))
                    .font(.system(size: 24))
                Spacer()
            }.padding(.horizontal)
            .padding(.top)
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(alignment: .top, spacing: 16) {
                    ForEach(collections) { num in
                        GeometryReader { proxy in
                            let scale = getScale(proxy: proxy)
                            
                            NavigationLink(
                                destination: CollectionView(collection: num),
                                label: {
                                    ZStack{
                                        Image(num.imageName)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 180)
                                            .clipped()
                                            .cornerRadius(8)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 8)
                                                    .stroke(Color(.black))
                                            )
                                            .shadow(radius: 3)
                                        VStack {
                                            Text(num.title)
                                                .foregroundColor(Color(red: 237/255, green: 221/255, blue: 211/255))
                                                .font(.system(size: 16, weight: .semibold))
                                                .multilineTextAlignment(.center)
                                        }
                                    }
                            })
                            .scaleEffect(.init(width: scale, height: scale))
                            //.animation(.spring(), value: 1)
                            .animation(.easeOut(duration: 1))
                            .padding(.vertical)
                            
                        } // End Geometry
                        .frame(width: 125, height: 300)
                        .padding(.horizontal, 32)
                        .padding(.top, 18)
                    }
                    Spacer()
                        .frame(width: 16)
                }
            }
            
        }
    }
    
    func getScale(proxy: GeometryProxy) -> CGFloat {
        let midPoint: CGFloat = 125
        
        let viewFrame = proxy.frame(in: CoordinateSpace.global)
        
        var scale: CGFloat = 1.0
        let deltaXAnimationThreshold: CGFloat = 125
        
        let diffFromCenter = abs(midPoint - viewFrame.origin.x - deltaXAnimationThreshold / 2)
        if diffFromCenter < deltaXAnimationThreshold {
            scale = 1 + (deltaXAnimationThreshold - diffFromCenter) / 500
        }
        
        return scale
    }
}
struct Carousel_Previews: PreviewProvider {
    static var previews: some View {
        Carousel(categoryName: "Collections")
            .previewDevice("iPhone 13")
    }
}
