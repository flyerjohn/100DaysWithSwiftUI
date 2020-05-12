//
//  LoadingView.swift
//  Design+Code
//
//  Created by João Medeiros on 10/05/20.
//  Copyright © 2020 Joao Medeiros. All rights reserved.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack {
            LottieView(filename: "loading").frame(width: 200, height: 200)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
