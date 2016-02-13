//
//  LogItem.swift
//  Tcd
//
//  Created by Nick Scott on 12/02/2016.
//  Copyright © 2016 Nick Scott. All rights reserved.
//

import Foundation
import CoreData


class LogItem: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    class func createInManagedObjectContext( moc : NSManagedObjectContext, title:String, text:String) -> LogItem{
        let newItem = NSEntityDescription.insertNewObjectForEntityForName("LogItem", inManagedObjectContext: moc) as! LogItem
        newItem.title = "My First Log"
        newItem.itemText = "testing core data"
        return newItem
    }
}
