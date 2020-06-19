//
//  Person+CoreDataProperties.swift
//  CoreDataDemo
//
//  Created by Apple on 19/06/20.
//  Copyright © 2020 Apple. All rights reserved.
//
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var name: String?
    @NSManaged public var phone: String?
    @NSManaged public var image: Data?

}
