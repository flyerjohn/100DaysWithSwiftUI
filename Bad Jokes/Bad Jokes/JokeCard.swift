//
//  JokeCard.swift
//  Bad Jokes
//
//  Created by João Medeiros on 02/10/19.
//  Copyright © 2019 Joao Medeiros. All rights reserved.
//

import SwiftUI
import CoreData

struct JokeCard: View {
    var joke: Joke
    
    var body: some View {
        VStack{
            VStack{
                Image("IMG_1257")
                    .resizable()
                    .frame(width: 300, height: 100)
                
                Text(self.joke.setup)
                    .font(.largeTitle)
                    .lineLimit(10)
                    .padding([.horizontal])
                
                Text(self.joke.punchline)
                    .font(.title)
                    .lineLimit(20)
                    .padding([.horizontal, .bottom])
            }
            .multilineTextAlignment(.center)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.white)
                    .shadow(color: Color(.sRGBLinear, white: 0, opacity: 0.29), radius: 10, x: 0, y: 0)
            )
            
            EmojiView(for: joke.rating)
                .font(.system(size: 72))
        }
        .frame(minHeight: 0, maxHeight: .infinity)
        .frame(width: 300)
        
    }
}

struct JokeCard_Previews: PreviewProvider {
    static var previews: some View {
        let joke = Joke(context: NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType))
        joke.setup = "What do you call a hen who counts her eggs?"
        joke.punchline = "A mathemachicken."
        joke.rating = "Sigh"
        
        return JokeCard(joke: joke)
    }
}
