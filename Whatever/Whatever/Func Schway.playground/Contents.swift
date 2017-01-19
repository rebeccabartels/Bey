//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Cat {
var legs = 4
    
    
    
    init(legs: Int) {
        //initializer is making the legs
        self.legs = legs
    }

    
    func meow () {
        print("meow")
        
    }
    
    func eatsFood(food: String) {
        if (food == "Mouse") {
            print("happycat")
        }
    }
    
    func checkStrangeCat () -> Bool {
        
        if self.legs == 4 {
            return false
        } else {
            return true
        }
        
    }
    
    func addLegs(mutantLegs:Int, extraEyes: Int){
        self.legs = mutantLegs
        meow()
 
        
    }

}


var Gomez = Cat(legs: 4)
var Dracula = Cat(legs: 5)
Dracula.checkStrangeCat()
Dracula.addLegs(10000, extraEyes: 5)


struct Dog {
    //classes pass by reference, structs pass by value. They have initializers implied.
    var legs = 4


}

var Franklin = Cat(legs: 5)
var Marlin = Dog(legs: 4)




print(Franklin.legs)
print(Marlin.legs)

var Joel = Franklin
var Ian = Marlin

Joel.legs = 20
Ian.legs = 100

print(Joel.legs)
print(Ian.legs)

print(Franklin.legs)  // class-> passed by reference. Whatever happened to Joel happened to Franklin.
print(Marlin.legs)    // struct-> Ian became a copy of Marlin (a clone)



























