//
//  Joke+CoreDataProperties.swift
//  Bad Jokes
//
//  Created by João Medeiros on 01/10/19.
//  Copyright © 2019 Joao Medeiros. All rights reserved.
//
//

import Foundation
import CoreData


extension Joke {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Joke> {
        return NSFetchRequest<Joke>(entityName: "Joke")
    }

    @NSManaged public var setup: String
    @NSManaged public var punchline: String
    @NSManaged public var rating: String

}
