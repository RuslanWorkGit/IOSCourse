import UIKit

let animals = ["Cat", "Wolf", "Rabbit", "Dog", "Mouse", "Horse"]

//for _ in 1...3{
//    print("Hi")
//}

for animal in animals {
    //print(animal)
}

//перевірка
for animal in animals where animal != "Dog" {
    //print(animal)
}

//доступ до індексу

for (index, animal) in animals.enumerated() {
   // print(index, animal)
}

//break and continue
for index in 1...10{
    if index == 5 {
        continue
    }
    //print(index)
}

//while

//var i = -10
//
//while i < 0 {
//    //print(i)
//    //i += 1
//}

//------------------Task--------------------

let weekDays = ["Monday", "Tuesday", "Wednesday", "Thusday", "Friday", "Satuday", "Sunday"]

for (number, day) in weekDays.enumerated() {
    if number == 3{
        break
    }
    print(number + 1, day)
}


let ageArray = [21, 16, 22, 19, 18, 20, 17, 24, 26, 23]

for age in ageArray {
    //age < 18 ? print("Kids: I am \(age) age") : print("Adult: I am \(age) age")
    if age < 18 {
        print("I have already celebrate my: ")
        for number in 1...age {
            print("\(number) age")
        }
    } else {
        print("Adult: I am \(age) age")
    }
    //print("I am \(age) age")
}
