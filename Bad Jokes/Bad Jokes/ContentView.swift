//
//  ContentView.swift
//  Bad Jokes
//
//  Created by João Medeiros on 01/10/19.
//  Copyright © 2019 Joao Medeiros. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    
    @FetchRequest(entity: Joke.entity(), sortDescriptors: [
        NSSortDescriptor(keyPath: \Joke.setup, ascending: true)
    ]) var jokes: FetchedResults<Joke>
    
    @State private var isShowingAddView = false
    
    var body: some View {
        ZStack(alignment: .top){
            LinearGradient(gradient: Gradient(colors: [Color("Start"), Color("Middle"), Color("End")]), startPoint: .bottom, endPoint: .top)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 10){
                    ForEach(jokes, id:\.setup){ joke in
                        JokeCard(joke: joke)
                    }.padding()
                   
                }
            }
            
            Button("Add Joke"){
                self.isShowingAddView.toggle()
            }
            .padding()
            .background(Color.black.opacity(0.4))
            .foregroundColor(.white)
            .clipShape(Capsule())
            .offset(y: 50)
            
            }
            .edgesIgnoringSafeArea(.all)
            .sheet(isPresented: $isShowingAddView){
            AddView().environment(\.managedObjectContext, self.moc)
        }
    }
    
    func removeJokes(at offsets: IndexSet){
        for index in offsets{
            let joke = jokes[index]
            moc.delete(joke)
        }
        try? moc.save()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
