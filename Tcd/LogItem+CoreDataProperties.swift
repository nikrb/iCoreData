//
//  LogItem+CoreDataProperties.swift
//  Tcd
//
//  Created by Nick Scott on 12/02/2016.
//  Copyright © 2016 Nick Scott. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension LogItem {

    @NSManaged var title: String?
    @NSManaged var itemText: String?

}
