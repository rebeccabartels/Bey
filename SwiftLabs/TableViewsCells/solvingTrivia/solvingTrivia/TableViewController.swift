//
//  TableViewController.swift
//  swift-solving-trivia-table-view-lab
//
//  Created by Flatiron School on 7/21/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

//import Foundation
import UIKit


class TableViewController: UITableViewController {// want to take properties, methods adopted from UITVC
    
    let statesAndCapitals = Location().locationsDictionary
    //initialization of copy of Location struc's dictionary
    
    //won't compile because statesAndCapitals doesn't have data in it until... (can't call on a property from another property)
    
    override func viewDidLoad() {//sequence when you open a new view,inherent methods that get called: viewWillLoad, viewDidLoad (loaded into memory), viewWillAppear, viewDidAppear (final plans). Must override because our super class has viewDidLoad, this is the one we want so listen to it.
        
        super.viewDidLoad() // super class is UITableViewController, calling viewDidLoad and its initializer
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {//calling tableView and setting number of rows dynamically (using count)
        //         tableView(UITableView, cellForRowAtIndexPath: <#T##NSIndexPath#>)
        //external name of variable, what it looks like when that function gets called
        
        //print(location.Bettina)
        
        //call the instance we created that's a copy of the struct. Bettina is attached to that copy.
        return statesAndCapitals.count
  
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        print("you tapped me\(indexPath.row)")
        
        let uniqueLetters: Bool = isUniqueStateAndCapital(indexPath)
        
    }
    
    func isUniqueStateAndCapital(indexPath: NSIndexPath) -> Bool {
//        var dictKey = statesAndCapitals["Alabama"]
        
        let stateCell = tableView.cellForRowAtIndexPath(indexPath)
        
        if let stateText = stateCell?.textLabel?.text {
            if let capital = statesAndCapitals[stateText] {
                let stateSet = Set(stateText.uppercaseString.characters)
                let capitalSet = Set(capital.uppercaseString.characters)
                return (stateSet.map { capitalSet.contains($0) }).contains(true)
            }
        }
        
        return false
    }
    
=======
        
    }
    
>>>>>>> e6ba08790e7fb9bda6a7e2aa939204d399dc46e3
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell { //calling tableView and returns a tableViewCell, which is...this tableView is attached to this view controller. creating cell at a certain row, indexPath.row gives us that row. IndexPath is cells are kept in a collection/tableView ...keeps track of order of cells.
        
        let cell = tableView.dequeueReusableCellWithIdentifier("basicCell", forIndexPath: indexPath)//calling on current tableView and please dequeue reusable cell (the queue/like the line of cells waiting to be used). So if 10 cells are visible at a time in view, as you're scrolling, the next 2 are getting ready to be loaded to view/be shown (save on memory space). Getting taken off the bench and put in the game. Btw are you a basic cell? Therefore, need identifier to get the call (specifying what kind of cell we want).
        
        //what do we want to see in cell?
        
        let allStates = Array(statesAndCapitals.keys).sort()
        //(.keys is a method of dictionary). allStates has to be within scope, withing function compiler is assuming that statesAndCapitals has been instantiated versus when you try to make it a global variable, can't access it as property of another property?? Can only sort because we casted the dictionary keys as an array.
        
        print(indexPath.row)
        cell.textLabel?.text = allStates[indexPath.row]//cell is using indexPath.row to call "give me the item(state) at this index/row number)"
        
        return cell
    }
    // tap on cell, alert should show up "winner" or "no match"
    //logic should check for matching characters, and return unique state
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let stateName = (tableView.cellForRowAtIndexPath(indexPath)?.textLabel?.text)!
        
        let lettersOverlapFlag = lettersOverlapFunction(stateName)
        
        var capitalNameUnwrapped = String()
        
        if let capitalName = statesAndCapitals[stateName] {
            
            capitalNameUnwrapped = capitalName
            
            print("You tapped me \(capitalName), \(stateName) and do the letters overlap? \(lettersOverlapFlag).")
        }
        
        showAlert(lettersOverlapFlag, stateAndCapital: (stateName, capitalNameUnwrapped))
        
    }
    
    func lettersOverlapFunction (state: String) -> Bool {
        
        if let capital = statesAndCapitals[state]{
            let stateSet = Set(state.lowercaseString.characters).sort()
            let capitalSet = Set(capital.lowercaseString.characters).sort()
            //            print("State: \(stateSet)\nCapital: \(capitalSet)")
            return (stateSet.map { capitalSet.contains($0) }).contains(true)
        }
        
        return false
    }
    
    func showAlert(lettersOverlap: Bool, stateAndCapital: (String, String)) {
        
        //        print("Hi! We're about to show an alert!")
        
//        if !lettersOverlap {
//            
//            print("You win")
//        } else {
//            
//            print("Sorry, you lose")
//        }

        var alertTitle = ""
        var message = ""
        
        if lettersOverlap {
            alertTitle = "You lose"
            message = "Try again"
        } else {
            alertTitle = "Winner winner"
            message = "chicken dinner"
        }
        
        
        
        let alertNotification = UIAlertController.init(title: alertTitle, message: message, preferredStyle: .Alert)
        
        let alertAction = UIAlertAction(title: "Try Again", style: .Cancel, handler: nil)
        
        alertNotification.addAction(alertAction)
        
        self.presentViewController(alertNotification, animated: true, completion: nil)
        
        }
}
<<<<<<< HEAD
// tap on cell, alert should show up "winner" or "no match"
//logic should check for matching characters, and return unique state
=======



>>>>>>> e6ba08790e7fb9bda6a7e2aa939204d399dc46e3
