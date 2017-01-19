//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// there are Keys and Values (Int, String, ect. Keys have to be unique and hashable -- which string does so just use strings. 

//Creating a Dictionary 3 ways

var namesOfIntegers: [Int:String] = [:]  //  = triggers word assign/assignment. Initialize w. nothing. If you got rid of the = sign, there would be no value. That makes it unable to be used.

var namesOfIntegers2 = [Int:String]() //less typing w. initializer syntax: () 

// let name = String () creates an empty string. () is basically alloc init.

var namesOfIntegers3 = [
    0:"Zero",
    1:"One",
    2:"Two",
    3:"Three",
    4:"Four",
    5:"Five",
    6:"Six",
    7:"Seven",
    8:"Eight",
    9:"Nine",
    10:"Ten"]



namesOfIntegers3.keys.sort ()   // way to sort 1

let sortedKeys = namesOfIntegers3.keys.sort ()  //way to sort 2
for key in sortedKeys {
    print(key)
}




//removing keyvalue pairs from names of Integers 3 

namesOfIntegers3 = [:]

namesOfIntegers3.removeAll()






// Accessing and Modifying a Dictionary 

var ages = [
    "Jess":44,
    "Brian":20,
    "Bloop":100
]

ages.count //there are three ages. THIS IS A PROPERTY (READ ONLY) NOT A FUNC, SO IT GETS NO ()


print ("The ages dictionary contains \(ages.count) people.")


if ages.isEmpty {
    print ("The ages dictionary is empty")
} else {
    print ("The ages dictionary contains \(ages.count) people.")
}

ages["Biscuit"]=22

//hey ages, I have this key "Biscuit" I want to assign 22 value to it. It will now add this key value pair. If it already existed, it would have replaced.

print (ages)


ages["Brian"] = 99

print(ages)
//overwrites Brian to be 99 


if let oldValue = ages.updateValue(1234, forKey: "Brian")
    {
    print("The old value for 'Brian' was \(oldValue)")
        print("Old value is \(oldValue), newValue is 1234... diff is \(1234 - oldValue)")
        // this finds the difference between Brian's old age and new age using string interpolation.
    
        
        
        
}

if let ageOfPerson = ages["Maryann"] {
    print ("The age of Maryann is \(ageOfPerson).")
}else {
    print ("There is no age set for a person with the name 'Maryann'")
}




// removing a value and seeking out it's age

if let removedValue = ages.removeValueForKey("Bloop") {
    print ("The removed person's age is \(removedValue).")
}else {
    print ("The ages dictionary doesn't contain a value for 'Bloop'.")
}




var favoriteWords = ["bye":"a way to end an encounter", "no": "a way to decline something"]


for definition in favoriteWords.values {
    print("Definition:\(definition)")
}

for word in favoriteWords.keys {
    print ("Word: \(word)")
}


// a tuple is a grouping of things in parentheses. 
























