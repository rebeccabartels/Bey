//
//  ViewController.swift
//  classesProject
//
//  Created by Rebecca Bartels on 8/5/16.
//  Copyright © 2016 Rebecca Bartels. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var family = Family.init() // an actual family here 
    //you need more than just an idea to access stuff
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //printed your init properties
        //in order to print, you must call the instance (first) and class.
        
        print(family.children)
        print(family.mom)
        print(family.dad)
        
        family.makeMoreChildren() //calling instance family (var above) and the func attached
        print(family.children)
        
        
        
        
        
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

