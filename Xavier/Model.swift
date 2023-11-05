//
//  Model.swift
//  Xavier
//
//  Created by Ajith Senthil on 11/2/23.
//

import SwiftUI

struct Movie: Identifiable {
    var id: Int
    var title: String
    var imageName: String
}

var latestMovie = [Movie(id: 0, title: "Avengers", imageName: "blue"),
                   Movie(id: 1, title: "Avengers 2", imageName: "blue"),
                   Movie(id: 2, title: "Avengers 3", imageName: "blue"),
                   Movie(id: 3, title: "Avengers 4", imageName: "blue"),
                   Movie(id: 4, title: "Avengers 5", imageName: "blue"),
                   Movie(id: 5, title: "Avengers 6", imageName: "blue"),
                   Movie(id: 6, title: "Avengers 7", imageName: "blue"),
                   Movie(id: 7, title: "Avengers 8", imageName: "blue"),
                   Movie(id: 8, title: "Avengers 9", imageName: "blue")]

struct Quote: Identifiable {
    var id: Int
    var content: String
    var source: Int?
    var pageNum: String
    var notes: String?
}

struct Collection: Identifiable {
    var id: Int
    var title: String
    var subCollections: [Collection]?
    var quotes: [Int]?
    var imageName: String
}

struct Source: Identifiable {
    var id: Int
    var title: String
    var subCollections: [Collection]?
    var quotes: [Int]?
    var imageName: String
}



var quotes = [Quote(id:0, content:
                        """
                        Te occidere possunt sed te edere non possunt nefas est. (Roughly, 'They can kill you, but the legalities of eating you are quite a bit dicier.')
                        """,
                    source: 0, pageNum: "124"),
              Quote(id:1, content:
                        """
                        Catherine Earnshaw, may you not rest as long as I am living. You said I killed you--haunt me then. The murdered do haunt their murderers. I believe--I know that ghosts have wandered the earth. Be with me always--take any form--drive me mad. Only do not leave me in this abyss, where I cannot find you! Oh, God! It is unutterable! I cannot live without my life! I cannot live without my soul!
                        """,
                    source: 1, pageNum: "104")
    ]

var sources = [Source(id: 0,
                      title: "Infinite Jest",
//                      subCollections: [Collection(id: 3, title: "Chapter 1", quotes: [0], imageName: "blue-h")],
                      quotes: [0, 1],
                      imageName: "sepia-h"),
               Source(id: 1,
                      title: "Wuthering Heights",
                      imageName: "sepia-h")]

var collections = [Collection(id: 0,
                              title: "Inspirational",
                              quotes: [0, 1],
                              imageName: "sepia-v"
                             ),
                   Collection(id: 1,
                              title: "Funny",
//                              subCollections:
//                                [Collection(id: 4, title: "IJ", quotes: [0,1], imageName: "blue-h")],
                              quotes: [0],
                              imageName: "sepia-v"
                             ),
                   Collection(id: 2,
                              title: "Writing",
                              quotes: [1],
                              imageName: "sepia-v")]
