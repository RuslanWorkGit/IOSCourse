import UIKit
//MARK: Theory

//-------1--------

func printStars() {
    print("*")
    print("*")
}

//print("1")
//printStars()
//print("2")
//printStars()
//print("3")

//---------2---------

func one() {
    print("1")
}
two()

func two() {
    print("2")
}

one()
two()

//---------3----------

func printMyAdress(_ country: String, _ city: String) {
    print("I live in \(country), \(city)")
}

printMyAdress("Ukraine","Kyiv")
printMyAdress("France", "Paris")

//----------4---------
func mult(numOne: Int, numTwo: Int) -> Int {
    let result = numOne * numTwo
    return result
}

let mult1 = mult(numOne: 5, numTwo: 3)
let mult2 = mult(numOne: 123, numTwo: 12413)
let mult3 = mult(numOne: 123123, numTwo: 1231233)

//MARK: Practice

//---------1----------
func printName(firstName: String, lastName: String){
    print("My name is \(firstName + " " + lastName)")
}

printName(firstName: "Ruslan", lastName: "Lyulka")

//---------2----------
func squareRoot(number: Double) -> Double {
    return sqrt(number)
}


//---------3----------

func square(number: Double) -> Double {
    return number * number
}

//---------4----------

func summ(num1: Double, num2: Double) -> Double {
    return squareRoot(number: num1) + square(number: num2)
}

//---------5----------

for i in 1...10 {
    for y in 1...10 {
        print(summ(num1: Double(i), num2: Double(y)))
    }
}
