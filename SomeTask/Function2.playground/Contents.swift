import UIKit

 //маски параметрів

func summ(_ val1: Int,_ val2: Int) -> Int {
    let result = val1 + val2
    return result
}

//summ(val1: 10, val2: 10)
summ(10, 12)

//дефолтні параметри

func mult(val1: Int, val2: Int = 10) -> Int {
    let result = val1 * val2
    return result
}

mult(val1: 12, val2: 12)
mult(val1: 10)

//функції з однаковими назвами

func doSomeStuff(line: String) {
    
}

func doSomeStuff(num: Int) {
    print(num)
}

func doSomeStuff(value: Bool) {
    
}

doSomeStuff(num: 12)

//рекурсія

func doSomeImportantStufff() {
    doSomeImportantStufff()
}

//Clouser

func doIt(clouser: (String, Int) -> ()) {
    clouser("Hey", 10)
}

doIt(clouser: { somevalue, someInt in
    print(somevalue, someInt)
})

//--------------Practice-------------

func persInfo(_ name: String, work: String = "Unnown position", currentDayOff: Int = 0) {
    print("My name is \(name), I am working at \(work) and I have \(currentDayOff) days of day off")
}

//persInfo(name: "Ruslan", work: "IOS developer", currentDayOff: 12)
//persInfo(name: "John", work: "Student")
//persInfo(name: "Martin")
persInfo("Ruslan")

//-------------------2---------------
func sum(line1: String, line2: String) {
    print(line1 + " " + line2)
}

func sum(val1: Int, val2: Int) {
    print(val1 + val2)
}

func sum(num1: Float, num2: Float) {
    print(num1 + num2)
}

let name = "Ruslan"
let surname = "Lyulka"

let numOne: Float = 12.3
let numTwo: Float = 18.7

let valOne = 10
let valTwo = 12

sum(line1: name, line2: surname)
sum(val1: valOne, val2: valTwo)
sum(num1: numOne, num2: numTwo)

//--------------3---------------

func someFunc(name: String, clouser: (String) -> ()) {
    if name.count > 1 {
        clouser(name)
    } else {
        clouser("Bob")
    }
}

someFunc(name: "Ruslan", clouser: { userName in
    print(userName)
})

someFunc(name: "", clouser: { userName in
    print(userName)
})


//resursion

func factorial(number: Int) -> Int{
    if number == 1 {
        return 1
    } else {
        return number * factorial(number: number - 1)
    }
}

//factorial(number: 5)

func printNum(num: Int) -> Int {
    if num == 1 {
        print(num)
        return 1
    } else {
        print(num)
        return printNum(num: num - 1)
    }
}

//printNum(num: 10)

func returnNumber(numA: Int, numB: Int) -> Int{
    if numA < numB {
        if numA == numB {
            print(numA)
            return numA
        } else {
            print(numA)
            return returnNumber(numA: numA + 1, numB: numB)
        }
    } else {
        if numB == numA {
            print(numB)
            return numB
        } else {
            print(numB)
            return returnNumber(numA: numA, numB: numB + 1)
        }
    }
}

returnNumber(numA: 30, numB: 22)


func powerOfTwo(number: Float) -> Float {
    if number == 1 {
        return 1
    } else if (number > 1 && number < 2) {
        return 0
    } else {
        return powerOfTwo(number: number / 2)
    }
}

if(powerOfTwo(number: 8) == 1) {
    print("Yes")
} else {
    print("No")
}


