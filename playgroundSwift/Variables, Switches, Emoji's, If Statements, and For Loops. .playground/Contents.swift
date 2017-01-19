//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
// spritekit/ screenkit 


// constant favorite food of type string with no value



let favoriteFood: String = "Bananas💟"
print (favoriteFood)


func goHeartCrazy (word:String) -> String {  // -> returns a string
    
    return "💟 \(word) 💟"  //to access emoji's, it's command space and control
    
}




// Replacing "p, P" with the 💩 emoji using an if statement within a For loop.

func poo (word:String) -> String {
    
    var newWord = "" //made a var
    
    
    for i in word.characters {
        
        
        if i == "P" || i == "p" {                                         //capital and lowercase P's.
            newWord.append(Character("💩"))
            print (newWord)
            
        } else {
            
           newWord += String(i)
        }
        
    }
    return newWord
   // 💩
}
poo ("Pluto")






//int, double 

var age = 52
var momsAge = 80.6 //double

age + Int(momsAge)  //turns momsAge double into an Int

Double(age)+momsAge //turns age int into a double 


let dads: Double = 5

let grades = 55.2 + 2





var isHungry = true

if !isHungry {
    
    print ("Let's get food!")
} else {
    print ("Let's go to sleep!")
}

//switch statement 

switch isHungry {    //within Switch statements, you need to account to account for every single possible scenerio/string
case true:
    print ("I love food.")  //switch must be exhaustive : it wont get through true case 
case false:
    print ("I'm tired.") //now it is exhaustive, all scenerios are stated.
}


// switch is like an IF statement, IF blank is EQUAL TO blank

let artists =
[
    "Taylor Swift",
    "Madonna",
    "Michael Jackson",
    "Lady Gaga"
]



for artist in artists {
    print (artist)
}

let approximateCount = 62
let countedThings = "moons orbiting Saturn"
var naturalCount: String

switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print ("There are \(naturalCount) \(countedThings). ")
// prints out there are dozens of moons orbinting saturn.


let story = "Whatever"

for i in story.characters {
    
    switch i {
        case "a", "e", "i", "o", "u":
        print ("oh, look, a vowel.")
    default:
        print("not a vowel, bummer.")   //must be exhaustive, default is like an else in Obj C where it goes over every other possible scenerio.
    }
}





































