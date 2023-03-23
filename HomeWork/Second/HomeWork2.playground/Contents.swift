import UIKit

class Sailor {
    
    let name: String
    
    func introduceMyself() {
       print("Hello, my name is \(name)")
    }
    
    init(sailorName: String) {
        name = sailorName
    }
}

let firstSailor = Sailor(sailorName: "Andrew")
firstSailor.introduceMyself()
let secondSailor = Sailor(sailorName: "Ruslan")
let thirdSailor = Sailor(sailorName: "Bogdan")
let fourtSailor = Sailor(sailorName: "Eugene")
let fifthSailor = Sailor(sailorName: "Arsen")


class Ship {
    let name: String
    let crew: [Sailor]
    
    func introduceAll() {
        print("We are from \(name) ship")
    }
    
    init(shipName: String, sailors: [Sailor]) {
        name = shipName
        crew = sailors
    }
}

let commanderShip = Ship(shipName: "Antonov", sailors: [firstSailor, secondSailor, thirdSailor, fourtSailor, fifthSailor])

commanderShip.introduceAll()

//MARK: Task-4

class Titanic: Ship {
    override func introduceAll() {
        super.introduceAll()
        
        print("Ми з корабля \(name)")
    }
}

let titanic = Titanic(shipName: "Titanic", sailors: [firstSailor])
titanic.introduceAll()


//MARK: Task-5

class Calculator {
    
    func add(numOne: Double, numTwo: Double) -> Double {
        return numOne + numTwo
    }
    
    func minus(numOne: Double, numTwo: Double) -> Double {
        return numOne - numTwo
    }
    
    func mult(numOne: Double, numTwo: Double) -> Double {
        return numOne * numTwo
    }
    
    func divide(numOne: Double, numTwo: Double) -> Double {
        return numOne / numTwo
    }
}

class CalculatorPro: Calculator {
    
    func calculatePercent(num: Double, percent: Double) -> Double {
        let onePercent = num / 100
        return percent * onePercent
    }
    
    func myPow(num: Double, power: Double) -> Double {
        return pow(num, power)
    }
}

class SuperProCalc: CalculatorPro {
    
    func calculateDepositAmount(principal: Double, interestRate: Double, years: Double) -> Double {
        let interest = interestRate / 100.0
        let totalInterest = pow((1 + interest), years)
        let amount = principal * totalInterest
        return amount
    }
}

let myCalc = SuperProCalc()

myCalc.calculateDepositAmount(principal: 100000, interestRate: 12.5, years: 2)


//MARK: Task-6

func battaryLife(battPercent: Int) {
    switch battPercent {
    case 100: print("Battery is full")
    case 70...80: print("You will need charger in 6 hour")
    case 20...40: print("Put your device to charger")
    case 0: print("Your device dead but if you use charger it can help")
    default: print("unnown number")
    }
}

battaryLife(battPercent: 34)
