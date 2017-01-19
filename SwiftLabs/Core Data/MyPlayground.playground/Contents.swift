//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



//HOUSE Of WESSEX:

var alfredTheGreat = ["Alfred The Great", "871 - 26 October 899"]
let edwardTheElder = ["Edward The Elder", "899 - 924"]
let Ælfweard = ["Ælfweard", "July 924 - August 924"]
let Æthelstan = ["Æthelstan", "924- 939"]
let edmundI = ["EdmundI", "939 - 946"]
let eadred = ["Eadred", "946 - 955"]
let eadwig = ["Eadwig", "955 -959"]
let edgarThePeaceful = ["Edgar The Peaceful", "959 - 975"]
let edwardTheMartyr = ["Edward The Martyr", "975 - 978"]
let ÆthelredTheUnready = ["Æthelred The Unready","978 - 1013 (first reign)"]



//let dictionary = houseOfWessex:[alfredTheGreat, edwardTheElder]
//HOUSE OF WESSEX

var houseOfWessex = [alfredTheGreat, edwardTheElder, Ælfweard, Æthelstan, edmundI, eadred, eadwig, edgarThePeaceful, edwardTheMartyr, ÆthelredTheUnready]


var englishHouses: [String: [[String]]]  = [:]


//print(englishHouses["House Of Wessex"])


 let housesArray = ["House Of Wessex", "House Of Denmark", "House Of Wessex (restored)", "House Of Denmark (restored)", "House Of Wessex (restored second time)", "House Of Normandy", "House Of Blois", "House Of Anjou", "House Of Plantagenet", "House Of Lancaster", "House Of York", "House Of Lancaster (restored)", "House Of York (restored)", "House Of Tudor"]
//HOUSE OF DENMARK
let sweynForkbeard = ["Sweyn Forkbeard", "1013 - 1014"]  //[String]

let houseOfDenmark = [sweynForkbeard]


// HOUSE OF WESSEX RESTORED
let ÆlthelredTheUnready = ["ÆlthelredTheUnready","1014 - 1016"]
let edmundIronside = ["edmundIronside", "April 1016 - November 1016"]


let houseOfWessexRestored = [ÆlthelredTheUnready, edmundIronside]

//HOUSE OF DENMARK RESTORED 

let cnut = ["Cnut", "1016 - 1035"]
let haroldHarefoot = ["Harold Harefoot", "1035 -1040"]
let harthacnut = ["Harthacnut", "1040 - 1042"]

let houseOfDenmarkRestored = [cnut, haroldHarefoot, harthacnut]

//HOUSE OF WESSEX RESTORED SECOND TIME
let edwardTheConfessor = ["Edward The Confessor","1042 - 1066"]
let haroldGodwinson = ["Harold Godwinson", "January 1066 - October 1066"]
let edgarTheÆtheling = ["Edgar The Ætheling", "October 1066 - December 1066"]

let houseOfWessexRestoredSecondTime = [edwardTheConfessor, haroldGodwinson, edgarTheÆtheling]


//House of Normandy
let williamTheConqueror = ["William The Conqueror", "1066 - 1087"]
let williamII = ["William II", "1087 - 1100", "Also known as Rufus"]
let henryI = ["Henry I", "1100 -1135", "Also known as Beauclerc"]

let houseOfNormandy = [williamTheConqueror, williamII, henryI]

//House of Blois
let stephenOfBlois = ["Stephen I", "1135 - 1154"]

let houseOfBlois = [stephenOfBlois]


 // double == is conditional check
for house in housesArray {
    print(house)
          if house == "House Of Wessex" {
            print("adding to: \(houseOfWessex)")
        englishHouses[house] = houseOfWessex
            
          } else if house == "House Of Denmark" {
            print("adding to: \(houseOfDenmark)")
            englishHouses[house] = houseOfDenmark
          } else if house == "House Of Wessex (restored)" {
            print("adding to: \(houseOfWessexRestored)")
            englishHouses[house] = houseOfWessexRestored
          } else if house == "House Of Denmark (restored)" {
            print("adding to: \(houseOfDenmarkRestored)")
            englishHouses[house] = houseOfDenmarkRestored
          } else if house == "House Of Wessex (restored second time)" {
            print("adding to: \(houseOfWessexRestoredSecondTime)")
            englishHouses[house] = houseOfWessexRestoredSecondTime
          } else if house == "House Of Normandy" {
            print("adding to: \(houseOfNormandy)")
            englishHouses[house] = houseOfNormandy
    } else if house == "House Of Blois"
    
}
print(englishHouses)






//right side Of = side is value, left is getting value on the right