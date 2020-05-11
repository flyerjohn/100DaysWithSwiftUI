//
//  UserStore.swift
//  Design+Code
//
//  Created by João Medeiros on 11/05/20.
//  Copyright © 2020 Joao Medeiros. All rights reserved.
//

import SwiftUI
import Combine

class UserStore: ObservableObject {
    @Published var isLogged: Bool =  UserDefaults.standard.bool(forKey: "isLogged") {
        didSet {
            UserDefaults.standard.set(self.isLogged, forKey: "isLogged")
        }
    }
    @Published var showLogin = false
}
