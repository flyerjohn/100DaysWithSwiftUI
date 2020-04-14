//
//  UpdateStore.swift
//  Design+Code
//
//  Created by João Medeiros on 13/04/20.
//  Copyright © 2020 Joao Medeiros. All rights reserved.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject {
    @Published var updates: [Update] = updateData
}
