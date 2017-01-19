//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let cats = ["Persian cat", "British Shorthair", "turkish Angora", "Bengal cat"] //let/var determine if the array is immutable or mutable. This array is immutable.
    // stylistic preference.
var dogs =
    [
    "Labrador Retriever",
    "Bulldog",
    "German Shephard",
    "Beagle"]

//creating an empty array 
// : colon means of type.






// style preferences con't.

var dogsAndCats:[String] = [] //w/o equal sign, the variable is uninitialized. Jim's favorite.
print(dogsAndCats)

//var dogsAndCats2 = [String]() //not being explicit w. type but equal string w. initializer syntax

//var dogsAndCats3: Array<String> = [] // happening behind the scenes. Type of elements are type string and initialized to nothing. Don't do this.



// Using Arrays 
//append something to dogsAndCats 

dogsAndCats.append("Fido")








//show count of the array 

dogsAndCats.count // no parentheses at end of count, this is not a function, it's a property. Parentheses are after funcs. 








// show the error of trying to access/change an element at a specific index. 

            // dogsAndCats[9] = "Test" this doesn't work because there are not 9 counts in the array.

dogsAndCats.insert("Doggy", atIndex: 0)
//dogsAndCats.insert("Doggy", atIndex: 3) this would crash because the index doesn't live yet









//show the insert function passing in something at Index 0 twice then attempting to insert something at Index 4. 

dogsAndCats[0] = "Brian"









//show isEmpty 

if dogsAndCats.isEmpty
{
    
}

let test = dogsAndCats.dropFirst() // drops Doggy

print (test)




//show them sort 

var shoppingThing = ["Zebra", "Pear", "Apple"]
shoppingThing.sort ()
shoppingThing.sort(>) //this is a function not a property, so you need the ()



//closures 

shoppingThing.sort { (first:String, second: String) -> Bool in
    
    if first == "Zebra" {return true}
    if first > second {return true}
    return false
}



let shoppingNumbers = [923840294, 2, 100]
shoppingNumbers.sort()

func sayHello(mom: String)
{
    //(string) -> void
}



//show them remove at index 

shoppingThing.removeAtIndex(0)




//number all elements in a collection
let shoppingList = ["Eggs","Milk","Flour","BakingPowder","Bananas"]

for (index, item) in shoppingList.enumerate() {
    
    let number = index + 1
    
    print("\(number).-\(item)")
}




// GIT STOOF

// git co -b makes a new branch 
// git co master  switches to master branch 
// branch is a seperate xcode project 




var itemsNeeded = ["Bananas", "Apples", "Eggs", "Rolls"]
var itemQuantities = [6, 4, 12, 4]
let finalList = ["1. 6 Bananas", "2. 4 Apples", "3. 12 Eggs", "4. 4 Rolls"]

    func makeShoppingList(_:String, quantityOfItems:Int)
{
  

   
    
    //itemsNeeded.append(itemQuantities)
    
        
    }
    
    
}



































