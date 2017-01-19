func sayHello() {
    let greeting = "Hello there!"
    print(greeting)
}

sayHello()
sayHello()


// print (greeting) is outside of the scope of the function, therefore IT CANNOT BE.


func sayHelloToGarfield() {
    print("Hello, Garfield, why do you sleep so much?")
}

func sayHelloToBuster() {
    print("Hello, Buster, why do you sleep so much?")
}

func sayHelloToScratchy() {
    print("Hello, Scratchy, why do you sleep so much?")
}


func sayHelloToCat(catName: String) {
    print("Hello, \(catName), why do you sleep so much?")
}

sayHelloToCat("Mittens")

let catFriend = "Socks"
sayHelloToCat(catFriend)



// Uncomment this line to see the error that is printed in the console.
//sayHelloToCat()



func sayGoodBye () {
    let goodbye = "See ya later!"
    print (goodbye)
}

sayGoodBye()
sayGoodBye()

func sayGoodbyeToMrPopkins () { //MrPopkins is my cat
    print("Goodbye, MrPopkins, may your day be filled with mirth and merriment!")
}

func sayGoodbyeToSherlockHolmes () {
    print("Goodbye, Holmes. I'm off to find Watson!")
}

func sayGoodbyeToOliverTwist () {
    print ("Well, Oliver, \(sayGoodBye()) and I hope you have some more!")
}








// Playing w. Funcs. 







































