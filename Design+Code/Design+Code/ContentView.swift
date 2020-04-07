//
//  ContentView.swift
//  Design+Code
//
//  Created by João Medeiros on 07/04/20.
//  Copyright © 2020 Joao Medeiros. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("HELLO, WORLD!")
                .font(.system(size: 45, weight: .bold, design: .default))
//            Spacer()
            Text("HELLO, WORLD!")
            .font(.system(size: 45, weight: .bold, design: .default))
            Spacer()
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
