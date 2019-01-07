//
//  Flashcard+CoreDataProperties.swift
//  Flashcard App Tutorial
//
//  Created by Owl on 2017-08-02.
//  Copyright © 2017 Owl. All rights reserved.
//
//

import Foundation
import CoreData


extension Flashcard {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Flashcard> {
        return NSFetchRequest<Flashcard>(entityName: "Flashcard")
    }

    @NSManaged public var question: String?
    @NSManaged public var answer: String?
    @NSManaged public var subject: String?

}
