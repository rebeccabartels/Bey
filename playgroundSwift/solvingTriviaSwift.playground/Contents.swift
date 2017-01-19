//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
import Foundation

struct Location {
    let Bettina = "hi"
    let locationsDictionary = [
        "Alabama" : "Montgomery",
        "Alaska" : "Juneau",
        "Arizona" : "Phoenix",
        "Arkansas" : "Little Rock",
        "California" : "Sacramento",
        "Colorado" : "Denver",
        "Connecticut" : "Hartford",
        "Delaware" : "Dover",
        "Florida" : "Tallahassee",
        "Georgia" : "Atlanta",
        "Hawaii" : "Honolulu",
        "Idaho" : "Boise",
        "Illinois" : "Springfield",
        "Indiana" : "Indianapolis",
        "Iowa" : "Des Moines",
        "Kansas" : "Topeka",
        "Kentucky" : "Frankfort",
        "Louisiana" : "Baton Rouge",
        "Maine" : "Augusta",
        "Maryland" : "Annapolis",
        "Massachusetts" : "Boston",
        "Michigan" : "Lansing",
        "Minnesota" : "St. Paul",
        "Mississippi" : "Jackson",
        "Missouri" : "Jefferson City",
        "Montana" : "Helena",
        "Nebraska" : "Lincoln",
        "Nevada" : "Carson City",
        "New Hampshire" : "Concord",
        "New Jersey" : "Trenton",
        "New Mexico" : "Santa Fe",
        "New York" : "Albany",
        "North Carolina" : "Raleigh",
        "North Dakota" : "Bismarck",
        "Ohio" : "Columbus",
        "Oklahoma" : "Oklahoma City",
        "Oregon" : "Salem",
        "Pennsylvania" : "Harrisburg",
        "Rhode Island" : "Providence",
        "South Carolina" : "Columbia",
        "South Dakota" : "Pierre",
        "Tennessee" : "Nashville",
        "Texas" : "Austin",
        "Utah" : "Salt Lake City",
        "Vermont" : "Montpelier",
        "Virginia" : "Richmond",
        "Washington" : "Olympia",
        "West Virginia" : "Charleston",
        "Wisconsin" : "Madison",
        "Wyoming" : "Cheyenne"
    ]
}

let statesAndCapitals = locationsDictionary

func isUniqueStateAndCapitalAtIndexPath (indexPath: IndexPath) -> Bool{

    let currentCell = Array(statesAndCapitals.keys)[indexPath.row]
    for (currentCell, capital) in statesAndCapitals {
        for char in currentCell.character {
            if capital.characters.contains(char) {
                if capital.characters.contains(char) {
                    return false
                }
            }
        }
    }
    return true
    
    
}

    
//    var isMatch = false
//    
//    for (state, capital) in statesAndCapitals {
//        
//        let stateSet = Set(state.lowercaseString.characters).sort()   //what is set doing here? has to be case sens.
//        let capitalSet = Set(capital.lowercaseString.characters).sort()
//        isMatch = (stateSet.map { capitalSet.contains($0) }).contains(true)
//        
//        if !isMatch {
//            
//            return state
//        }
//        
//    }
//    
//    return false
    
}
}