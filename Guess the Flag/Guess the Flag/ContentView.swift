//
//  ContentView.swift
//  Guess the Flag
//
//  Created by João Medeiros on 05/11/19.
//  Copyright © 2019 Joao Medeiros. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Monaco", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        VStack(spacing: 30){
            VStack {
                Text("Tap on the flag")
                Text(countries[correctAnswer])
            }
            
            ForEach(0 ..< 3){number in
                Button(action:{
                    // flag was tapped
                }) {
                    Image(self.countries[number])
                        .renderingMode(.original)
                }
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
