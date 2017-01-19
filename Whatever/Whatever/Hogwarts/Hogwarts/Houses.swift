//
//  Houses.swift
//  Hogwarts
//
//  Created by Rebecca Bartels on 8/12/16.
//  Copyright © 2016 Rebecca Bartels. All rights reserved.
//

import Foundation


class Hogwarts {
    
    
    var says = ""
    let griffindorhouse = "Griffindor"
    let hufflepuffhouse = "Hufflepuff"
    let ravenclawHouse = "Ravenclaw"
    let slytherinHouse = "Slytherin"

    
    func griffindor () -> String {
        says = "Roar"
        print(says)
        return says
    }
    
    func slytherin () -> String {
        says = "Sssssssss"
        print(says)
        return says
    }
    
    func ravenClaw () -> String {
        says = "caw-caw"
        print(says)
        return says
    }
    
    func hufflepuff () -> String {
        says = "Squee"
        print(says)
        return says
    }
    
}

class Slytherin: Hogwarts {
        
    var sss = ""
    
    override func slytherin() -> String {
        sss = "\(slytherinHouse) will always win"
        print(sss)
        return sss
    }
    
    override func hufflepuff() -> String {
        sss = "\(hufflepuffhouse) who cares"
        print(sss)
        return sss
    }
    
    override func ravenClaw() -> String {
        sss = "\(ravenclawHouse) nerds"
        print(sss)
        return sss
    }
    
    override func griffindor() -> String {
        sss = "\(griffindorhouse) are a bunch of pompous losers"
        print(sss)
        return sss
    }
        
}





