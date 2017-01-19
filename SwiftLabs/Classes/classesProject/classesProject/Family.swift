//
//  Family.swift
//  classesProject
//
//  Created by Rebecca Bartels on 8/5/16.
//  Copyright © 2016 Rebecca Bartels. All rights reserved.
//

import Foundation

class Family {

var mom: String!
    //idea of mom - there will be a mom somewhere in program that will be created later.
    
    
var dad: String = ""
    //dad is not just an idea; dad exists in a string literal
    //() conveys actually create the object -- is faster 
    // var dad = string()
    
    
var children = [String]()
    //children idea exists in form of string in an array
    //() conveys actually create the object
    
//setting the value to my family's names in initializer. If an init takes in arguments it becomes an designated or convenience initializer. 
    //we are hard coding our parents names so we don't want to take arguments in.
    //we are setting value of mom dad children to actual family members.
    //closures and initializers need self prefaced before variable.

    init () {
        self.mom = "Andrea"
        self.dad = "Don"
        self.children = ["Rebecca"]
        
    }
    
    func makeMoreChildren () {
        let baby = mom + dad //when you have two strings you can add them and make a brand new string
        
        children.append(baby)
        
        let puppy = "Katrina"
        children.append(puppy)
        
        let kitten = "Mr.Popkins"
        children.append(kitten)
    }
    
    
    
    

}