//
//  ViewController.swift
//  HomeW-1
//
//  Created by Ruslan Liulka on 30.09.2024.
//

import UIKit

var randomNumber = [-19, 22, 54, -13, -65, 38, 23, -9, 3, -3]
let monthsArray = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
var monthsDict: [Int: String] = [:]
var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]
var calendar: [Int: [String]] = [:]


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        for (index, number) in randomNumber.enumerated() {
            if number < 0 {
                randomNumber.remove(at: index)
                randomNumber.insert(0, at: index)
            }
        }
        print(randomNumber)
        
        //Max and Min element
        print(randomNumber.max() ?? 0)
        print(randomNumber.min() ?? 0)
        
        //Sum of element
        var sum = 0
        for number in randomNumber {
            sum += number
        }
        
        print(sum)
        
        //work with dict
        for (index, month) in monthsArray.enumerated() {
            monthsDict[index] = month
        }
        print(monthsDict)
        
        // swap dict
        let temp = dictionary["first"]
        dictionary["first"] = dictionary["fourht"]
        dictionary["fourth"] = temp
        
        print(dictionary)
        
        //Calendar
        
        for year in 1970...2024 {
            calendar[year] = monthsArray
        }
        
        
        for year in calendar.keys {
            calendar[year]?.append("Ruslan")
        }
        print(calendar)
        
    }


}



