// This is effectively step 1 on its own with the Storyboard ViewController
//
//  ViewController.swift
//  Tcd
//
//  Created by Nick Scott on 12/02/2016.
//  Copyright © 2016 Nick Scott. All rights reserved.
//
/**
 error handling
enum VendingMachineError: ErrorType {
    case InvalidSelection
    case InsufficientFunds(coinsNeeded: Int)
    case OutOfStock
}

throw VendingMachineError.InsufficientFunds(coinsNeeded: 5)
guard let item = inventory[name] else {
    throw VendingMachineError.InvalidSelection
}
**/

import UIKit
import CoreData

class ViewController: UIViewController {
    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let newItem = NSEntityDescription.insertNewObjectForEntityForName("LogItem", inManagedObjectContext: self.managedObjectContext) as! LogItem
        newItem.title = "My First Log"
        newItem.itemText = "testing core data"
        print("finished new item setup")
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let fetchRequest = NSFetchRequest(entityName: "LogItem")
        
        do {
            if let fetchResults = try managedObjectContext.executeFetchRequest( fetchRequest) as? [LogItem]{
                let alert = UIAlertController(title: fetchResults[0].title,
                                            message: fetchResults[0].itemText,
                                     preferredStyle: .Alert)
                self.presentViewController(alert, animated: true, completion: nil)
            }
        } catch {
            print("@view controller failed to get data")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

