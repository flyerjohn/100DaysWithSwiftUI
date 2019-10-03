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
    @Environment(\.managedObjectContext) var moc
    @State private var isShowingPunchline = false
    @State private var dragAmount = CGSize.zero
    var joke: Joke
    
    var body: some View {
        VStack{
            GeometryReader{ geo in
                VStack{
                    Image("IMG_1257")
                        .resizable()
                        .frame(width: 300, height: 230)
                    
                    Text(self.joke.setup)
                        .font(.largeTitle)
                        .lineLimit(10)
                        .padding([.horizontal])
                    
                    Text(self.joke.punchline)
                        .font(.title)
                        .lineLimit(15)
                        .padding([.horizontal, .bottom])
                        .blur(radius: self.isShowingPunchline ? 0 : 7)
                        .opacity(self.isShowingPunchline ? 1 : 0.31)
                }
                .multilineTextAlignment(.center)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.white)
                        .shadow(color: Color(.sRGBLinear, white: 0, opacity: 0.29), radius: 10, x: 0, y: 0)
                )
                .onTapGesture {
                    withAnimation{
                        self.isShowingPunchline.toggle()
                    }
                }
                .rotation3DEffect(.degrees(-Double(geo.frame(in: .global) .minX) / 10.0), axis: (x: 0, y: 1, z:0))
            }
            
            EmojiView(for: joke.rating)
                .font(.system(size: 72))
        }
        .frame(minHeight: 0, maxHeight: .infinity)
        .frame(width: 300)
        .offset(y: dragAmount.height)
        .gesture(
            DragGesture()
                .onChanged { self.dragAmount = $0.translation }
                .onEnded { value in
                    if self.dragAmount.height < -200 {
                        withAnimation {
                            self.dragAmount = CGSize(width: 0, height: -1000)
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3){
                                self.moc.delete(self.joke)
//                                try? self.moc.save()
                            }
                        }
                    } else {
                        self.dragAmount = .zero
                    }
            }
        )
            .animation(.spring())
        
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
