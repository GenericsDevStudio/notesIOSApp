//
//  User+CoreDataProperties.swift
//  Notes
//
//  Created by Anton Dacenkof on 1/30/19.
//  Copyright © 2019 Generics. All rights reserved.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var id: Int32
    @NSManaged public var email: String?
    @NSManaged public var password: String?

}
