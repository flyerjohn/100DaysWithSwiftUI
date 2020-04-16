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
        let colors = [#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1), #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)]
        
        getArray(id: "course") { (items) in
            items.forEach { (item) in
                self.courses.append(Course(title: item.fields["title"] as! String,
                                           subtitle: item.fields["subtitle"] as! String,
                                           image: item.fields.linkedAsset(at: "image")?.url ?? URL(string: "")!,
                                           logo: #imageLiteral(resourceName: "Logo1"),
                                           color: colors.randomElement()!,
                                           show: false))
            }
        }
    }
}
