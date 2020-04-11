//
//  RingView.swift
//  Design+Code
//
//  Created by João Medeiros on 09/04/20.
//  Copyright © 2020 Joao Medeiros. All rights reserved.
//

import SwiftUI

struct RingView: View {
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.black.opacity(0.1), style: StrokeStyle(lineWidth: 5))
                .frame(width: 44, height: 44)
            
            Circle()
                .trim(from: 0.25, to: 1)
                .stroke(
                    LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))]), startPoint: .topTrailing, endPoint: .bottomLeading),
                    style: StrokeStyle(lineWidth: 5, lineCap: .round)
                )
                .frame(width: 44, height: 44)
                .rotationEffect(.degrees(90))
                .rotation3DEffect(.degrees(180), axis: (x: 1, y: 0, z: 0))
                .shadow(color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).opacity(0.3), radius: 3, x: 0, y: 3)
            
            Text("73%")
                .font(.subheadline)
                .fontWeight(.bold)
        }
    }
}

struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingView()
    }
}
