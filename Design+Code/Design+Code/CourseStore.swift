//
//  CourseStore.swift
//  Design+Code
//
//  Created by João Medeiros on 16/04/20.
//  Copyright © 2020 Joao Medeiros. All rights reserved.
//

import SwiftUI
import Contentful

let client = Client(spaceId: "85frklrmbhsc", accessToken: "JTMK5Sj0IXH-UpFbA6atNWXBi3GL6wgMBu6Uing_waA")

func getArray() {
    let query = Query.where(contentTypeId: "course")
    
    client.fetchArray(of: Entry.self, matching: query) { result in
        print(result)
    }
}
