//
//  AddView.swift
//  Bad Jokes
//
//  Created by João Medeiros on 01/10/19.
//  Copyright © 2019 Joao Medeiros. All rights reserved.
//

import SwiftUI

struct AddView: View {
    @Environment(\.managedObjectContext) var moc
    
    @State private var setup = ""
    @State private var punchline = ""
    @State private var rating = "Silence"
    let ratings = ["Smirk", "Sob", "Sigh", "Silence"]
    
    var body: some View {
        NavigationView{
            Form{
                Section{
                    TextField("Setup", text: $setup)
                    TextField("Punchline", text: $punchline)
                    
                    Picker("Rating", selection: $rating){
                        ForEach(ratings, id: \.self){ rating in
                            Text(rating)
                        }
                    }
                }
                Button("Add Joke"){
                    let newJoke = Joke(context: self.moc)
                    newJoke.setup = self.setup
                    newJoke.punchline = self.punchline
                    newJoke.rating = self.rating
                    
                    do {
                        try self.moc.save()
                    } catch{
                        print("Yikes! \(error.localizedDescription)")
                    }
                }
            }.navigationBarTitle("Add Joke")
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
