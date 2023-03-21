//
//  SecondScreenViewController.swift
//  SecondLive
//
//  Created by Ruslan Liulka on 21.03.2023.
//

import UIKit

class SecondScreenViewController: UIViewController {

    let someTestString = "123"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let manClass = HumanClass()
        manClass.name = "Class"
        
        let newManClass = manClass
        newManClass.name = "Tom"
        
        var manStruct = HumanStruct()
        manStruct.name = "Bob"
        
        var newManStruct = manStruct
        newManStruct.name = "Chack"
        
        
        
    }
    
    func textFunc() {
        let someString = "1289993"
    }

}

//Refences type
//Class, Closuer, Protocol

class HumanClass {
    var name: String = " "
}

//Value type
//Sturct, Enum

struct HumanStruct {
    var name: String = " "
}

