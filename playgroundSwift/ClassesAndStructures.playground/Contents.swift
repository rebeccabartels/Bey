//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Classes and structures are flexible constructs that become the building blocks of your program's code. You define properties and methods to add functionality to your classes and structures by using exactly the same sybtax for constants, variables, and functions. 


//initializers 





class SomeClass {
    //class definition goes here
}


struct SomeStructure {
    //structure definition goes here 

}

//Whenever you define a new class or structure, you effectively define a brand new Swift type 


struct Cat {
    let name: String
    var age: Int
    
    func celebrateBirthday () {
        print("Cat nip, LOTS OF IT.")
        
    }
    init(name:String, age: Int) {       //has to be inside the struct
        self.name = name
        self.age = age
    
}
    
    
    struct Dog {
        let name: String
        var age: Int
        func celebrateBirthdayDog () {
            print ("Buiscuits!")
            
    }
        init(name:String, age: Int) {       //has to be inside the struct
            self.name = name
            self.age = age
        
            
        }
        
        let MrPopkins = Cat (name: "Mr.Popkins", age: 14)
        let Katrina = Dog (name: "Katrina", age: 13)
        
        
    }
//We're defining a new struture called Cat (a type) which has two stored properties called name and age. Stored properties are constants or variables that are bundled up and stored as part of the class or structure.

// The cat struc definition and the dog class def only describe what a cat or dog will look like. They themselves do not describe a specific dog or cat. To do that, you must make a struc or class. 








