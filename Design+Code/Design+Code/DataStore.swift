//
//  DataStore.swift
//  Design+Code
//
//  Created by João Medeiros on 16/04/20.
//  Copyright © 2020 Joao Medeiros. All rights reserved.
//

import SwiftUI
import Combine

class DataStore: ObservableObject {
    @Published var posts: [Post] = []
    
    init() {
        getPosts()
    }
    
    func getPosts() {
        Api().getPosts { (posts) in
            self.posts = posts
        }
    }
}
