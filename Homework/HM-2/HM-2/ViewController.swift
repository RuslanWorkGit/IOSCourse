//
//  ViewController.swift
//  HM-2
//
//  Created by Ruslan Liulka on 01.10.2024.
//

import UIKit

class Sailor {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func introduceMyself() {
        print("Hello, I'm \(name)")
    }
}

class Ship {
    var name: String
    var comand: [Sailor]
    
    init(name: String, comand: [Sailor]) {
        self.name = name
        self.comand = comand
    }
    
    func introduceAll() {
        for sailor in comand {
            sailor.introduceMyself()
        }
        print("We are from ship \(name).")
    }
}

class Titanic: Ship {
    override func introduceAll() {
        super.introduceAll()
        for sailor in comand {
            sailor.introduceMyself()
        }
        print("New introduced ship \(name)")
    }
}

class TitanicSailor: Sailor {
    override func introduceMyself() {
        print("New introduced sailor \(name).")
    }
}

class Calculator {
    func add(_ a: Float, _ b: Float) -> Float {
        a + b
    }
    
    func minus(_ a: Float, _ b: Float) -> Float {
        if a > b {
            a - b
        } else {
            b - a
        }
    }
    
    func mult(_ a: Float, _ b: Float) -> Float {
        a * b
    }
    
    func div(_ a: Float, _ b: Float) -> Float {
        a / b
    }
}


class CalculatorPro: Calculator {
    func myPow(number: Float, power: Int) -> Float {
        if power == 0 {
            return 1
        } else if power < 0{
            return 1 / myPow(number: number, power: -power)
        } else {
            return number * myPow(number: number, power: power - 1)
        }
    }
    
    func percent(number: Float, percent: Float) -> Float {
        let onePercent = number / 100
        return onePercent * percent
    }
}

class SuperProCalc: CalculatorPro {
    func calculateCompoundInterest(principal: Float, rate: Float, timesCompounded: Int, years: Int) -> Float {
        let ratePerPeriod = rate / Float(timesCompounded)
        let totalPeriods = Float(timesCompounded * years)
        
        let amount = principal * pow(1 + ratePerPeriod, totalPeriods)
        return amount
    }
}

func checkBetteryLife(charge: Int) {
    switch charge {
    case 100: print("Full charged")
    case 70...80: print("You will need charger in 6 hours")
    case 20...40: print("Put our device to charger")
    case 0: print("Your device die")
    default: break
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let first = Sailor(name: "Ruslan")
        let second = Sailor(name: "Vladimir")
        let third = Sailor(name: "Igor")
        let fourth = Sailor(name: "Oleg")
        let fifth = Sailor(name: "Dmitry")
        let ship = Ship(name: "Mriya", comand: [fifth, fourth, third, second, first])
        
        ship.introduceAll()
        
        let titanicSailor = TitanicSailor(name: "Ruslan")
        let titanic = Titanic(name: "Titanic", comand: [titanicSailor])
        titanic.introduceAll()
        titanicSailor.introduceMyself()
        
        let myCalculator = SuperProCalc()
        print(myCalculator.calculateCompoundInterest(principal: 10000, rate: 0.01, timesCompounded: 8, years: 1))
        print(myCalculator.myPow(number: 10, power: 4))
        print(myCalculator.myPow(number: 10, power: -4))
        print(myCalculator.percent(number: 1000, percent: 10))
        
        checkBetteryLife(charge: 77)
        checkBetteryLife(charge: 22)
        checkBetteryLife(charge: 0)
        checkBetteryLife(charge: 3)
        
        checkBetteryLife(charge: 19)
    }
    
    
}


