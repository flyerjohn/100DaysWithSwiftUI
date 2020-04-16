//
//  CourseStore.swift
//  Design+Code
//
//  Created by João Medeiros on 16/04/20.
//  Copyright © 2020 Joao Medeiros. All rights reserved.
//

import SwiftUI
import Contentful
import Combine

let client = Client(spaceId: "85frklrmbhsc", accessToken: "JTMK5Sj0IXH-UpFbA6atNWXBi3GL6wgMBu6Uing_waA")

func getArray(id: String, completion: @escaping([Entry]) -> ()) {
    let query = Query.where(contentTypeId: id)
    
    client.fetchArray(of: Entry.self, matching: query) { result in
        switch result {
        case .success(let array):
            DispatchQueue.main.async {
                completion(array.items)
            }
            
        case .error(let error):
            print(error)
        }
    }
}

class CourseStore: ObservableObject {
    @Published var courses: [Course] = courseData
    
    init() {
        getArray(id: "course") { (items) in
            items.forEach { (item) in
                self.courses.append(Course(title: item.fields["title"] as! String,
                                           subtitle: item.fields["subtitle"] as! String,
                                           image: #imageLiteral(resourceName: "Card3"),
                                           logo: #imageLiteral(resourceName: "Logo1"),
                                           color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1),
                                           show: false))
            }
        }
    }
}
