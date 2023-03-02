import UIKit

class Animal {
    
    var name: String = ""
    var age: Int = 0
    
    init() {
        print("Animal - init")
    }
    
    func move() {
        print("I can move!!")
    }
    
    func breath() {
        print("I can breath!!!")
    }
    
    deinit {
        print("Animal - deinit")
    }
}

func doSomthing() {
    let animal1 = Animal()
    animal1.move()
}

//doSomthing()
 
//наслідування

class Fish: Animal {
    override func move() {
        super.move()
        print("I can swim!")
    }
}

let fish1 = Fish()
fish1.move()

//переопределение

class Bird: Animal {
    override func move() {
        super.move()
        print("I can fly!!")
    }
}

let bird1 = Bird()
bird1.move()


// Struct

struct House {
    var numberOfHouese: Int
    var height: Float
}

let house1 = House(numberOfHouese: 2, height: 6.12)


//------------------------Practice-----------------------------

class Calculator {
    func add(first: Float, second: Float) -> Float {
        return first + second
    }
    
    func minus(first: Float, second: Float) -> Float {
        return first - second
    }
    
    func mult(first: Float, second: Float) -> Float {
        return first * second
    }
    
    func div(first: Float, second: Float) -> Float {
        return first / second
    }
    
    func remainderOfDivision(first: Float, second: Float) -> Float {
        return first.truncatingRemainder(dividingBy: second) //%
    }
}


class SuperCalculator: Calculator {
    func toPow(number: Double, myPow: Int) -> Double {
        var result: Double = 0
        for i in 1...myPow {
            if i == 1 {
                result = number
            } else {
                result *= number
            }
        }
        return result
        //return pow(number, Double(myPow))
    }
    
    func percent(number: Float, percent: Float) -> Float {
        let onePerc = number / 100
        
        return onePerc * percent
    }
    
    override func add(first: Float, second: Float) -> Float {
        super.add(first: first, second: second)
        print("I am SuperCalculator")
        return first + second
    }
    
    override func minus(first: Float, second: Float) -> Float {
        super.minus(first: first, second: second)
        print("I am SuperCalculator")
        return first - second
    }
    
    override func mult(first: Float, second: Float) -> Float {
        super.mult(first: first, second: second)
        print("I am SuperCalculator")
        return first * second
    }
    
    override func div(first: Float, second: Float) -> Float {
        super.div(first: first, second: second)
        print("I am SuperCalculator")
        return first / second
    }
}

let myCulc = SuperCalculator()

myCulc.add(first: 10, second: 5)
myCulc.percent(number: 100, percent: 10)
myCulc.toPow(number: 10, myPow: 3)

