//
//  EmojiView.swift
//  Bad Jokes
//
//  Created by João Medeiros on 01/10/19.
//  Copyright © 2019 Joao Medeiros. All rights reserved.
//

import SwiftUI

struct EmojiView: View {
    var rating: String
    
    var body: some View {
        switch rating {
        case "Sob":
            return Text("😭")
        case "Smirk":
            return Text("😏")
        case "Sigh":
            return Text("😔")
        default:
            return Text("😑")
        }
    }
    
    init(for rating: String){
        self.rating = rating
    }
}

struct EmojiView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiView(for: "Sob")
    }
}
