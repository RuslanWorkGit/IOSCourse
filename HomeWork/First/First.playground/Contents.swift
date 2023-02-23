import UIKit

var array: [Int] = []

for _ in 1...5 {
    array.append(Int.random(in: 1..<20))
    array.append(Int.random(in: -20 ..< -1))
}

//Change all negative numbers on 0 and print massive to console

print("Input massive")
print(array)

for (index, number) in array.enumerated(){
//    if number < 0 {
//        array[index] = 0
//    }
    
    number < 0 ? array[index] = 0 : nil
}
print("Output array")
print(array)

//Find min adn max element in array

print("Minimum element is \(array.min() ?? 0)")
print("Maximum element is \(array.max() ?? 0)")


//Find a summ of element in array

var summ = 0
for i in array {
    summ = summ + i
}

print("Summ is \(summ)")


//Create an array with names of all months.

let months = ["January", "February", "March", "April", "May", "June", "July", "Agust", "September", "October", "November", "December"]

var mounthsNumber: [Int : String] = [:]

for (index, value) in months.enumerated(){
    mounthsNumber[index + 1] = value
}

print("----------------------Calendar--------------------------")
for (key, value) in mounthsNumber {
    print("\(key) : \(value)")
}


//task number 5
var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]

let first = dictionary["first"]

dictionary["first"] = dictionary["fourth"]
dictionary["fourth"] = first

print("------------------change place value------------------")
print(dictionary)


//task 6

var calendar: [Int: [String]] = [:]

for number in 1970...2022 {
    calendar[number] = months
}

//print(calendar)

for (key, value) in calendar {
    calendar[key] = value + ["Ruslan"]
}
//print(calendar)


//Task 7

var numberArray: [Int] = []

for i in 1...31 {
    numberArray.append(i)
}

var calendarPro: [Int : [[String]:[Int]]] = [:]

for (key, value) in calendar {
    calendarPro[key] = [calendar[key]! : numberArray]
}

for (kye, value) in calendarPro {
    if kye == 2019 {
        for (kyeValue, value1) in value {
            for month in kyeValue {
                if month == "September"{
                    print("\(kye) \(month) \(value1[0])")
                }
            }
        }
    }
}

//Task 8

let numOne = 4
let numTwo = 4

if numOne == numTwo {
    print("\(numOne) * \(numTwo) = \(numTwo * numOne)")
} else if (numOne + numTwo) % 2 == 0 {
    print("\(numOne) + \(numTwo) = \(numTwo + numOne)")
}

//Task 9
let text = "I like eat and it is really cool to taste delisious food!"

let worldArray = text.components(separatedBy: " ")

let firstWorld = worldArray.first
let last = worldArray.last

for var i in worldArray {
    if i == worldArray[0] || i == worldArray[worldArray.count - 1] {
        if i.suffix(1) == "!" {
            i.removeLast()
            print(i)
        } else {
            print(i)
        }
    }
}
