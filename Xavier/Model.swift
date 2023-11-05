//
//  Model.swift
//  Xavier
//
//  Created by Ajith Senthil on 11/2/23.
//

import SwiftUI


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
              ,
        Quote(id:2, content:
                  """
                  The truth will set you free. But not until it is finished with you.
                  """,
              source: 0, pageNum: "555")
              ,
        Quote(id:3, content:
                  """
                  I'll say God seems to have a kind of laid-back management style I'm not crazy about. I'm pretty much anti-death. God looks by all accounts to be pro-death. I'm not seeing how we can get together on this issue, he and I...
                  """,
              source: 0, pageNum: "876")
              ,
        Quote(id:4, content:
                  """
                  Do I contradict myself?
                  Very well then I contradict myself,
                  (I am large, I contain multitudes.)
                  """,
              source: 2, pageNum: "104")
    ]

var sources = [Source(id: 0,
                      title: "Infinite Jest",
//                      subCollections: [Collection(id: 3, title: "Chapter 1", quotes: [0], imageName: "blue-h")],
                      quotes: [0,2,3],
                      imageName: "sepia-h"),
               Source(id: 1,
                      title: "Wuthering Heights",
                      quotes: [1],
                      imageName: "sepia-h"),
               Source(id: 2,
                      title: "Walt Whitman",
                      quotes: [4],
                      imageName: "sepia-h")
]

var collections = [Collection(id: 0,
                              title: "Poetry",
                              quotes: [5],
                              imageName: "sepia-v"
                             ),
                   Collection(id: 1,
                              title: "Funny",
//                              subCollections:
//                                [Collection(id: 4, title: "IJ", quotes: [0,1], imageName: "blue-h")],
                              quotes: [0,4,3],
                              imageName: "sepia-v"
                             ),
                   Collection(id: 2,
                              title: "Writing",
                              quotes: [1,2],
                              imageName: "sepia-v")]
