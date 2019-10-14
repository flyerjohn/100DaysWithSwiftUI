//
//  ContentView.swift
//  WeSplit project of the 100 days of SwiftUI challange!
//
//  Created by João Medeiros on 14/10/19.
//  Copyright © 2019 Joao Medeiros. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form{
                Section{
                    Text("Hello World")
                }
            }
        .navigationBarTitle(Text("SwiftUI"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
