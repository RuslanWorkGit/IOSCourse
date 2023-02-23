import UIKit

var arrayOfNames = ["Bob", "Steve", "Ruslan", "Andrew", "John"]

let newStudent1 = "Bogdan"
let newStudent2 = "Eguene"

arrayOfNames.append(newStudent1)
arrayOfNames.insert(newStudent2, at: 0)

//delete first and penultimate student form array

arrayOfNames.removeFirst()
arrayOfNames.remove(at: arrayOfNames.count - 2)

let newNames = ["Eugene", "Arsen"]

//let group = arrayOfNames + newNames

var group = arrayOfNames
group.append(contentsOf: newNames)

// print name of first and second student

print("First student is \(group[0]), seconde student is - \(group[1])")

print("In array we have \(group.count) elements")
print("The array is emty - \(group.isEmpty)")

let newGroup = group
group.removeAll()
