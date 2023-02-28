import UIKit

func printAge(age: Int) {
    guard age < 18 else {
        print("I'm not a kid")
        return
    }
    print(age)
}

printAge(age: 58)
 
//тернанрний оператор

var score = 250
var highScore = 800

let message = score > highScore ? "New high score" : "\(score)"


//Switch
var age = 24

switch age {
case 0...16: print("Can not drive")
case 17...80: print("Can drive")
case 70...100: print("Cann't drive")
default: print("?")
}


//fallthrough // where
let isCarOwner = true

switch age {
case 0...16: print("Can not drive")
case 17...80 where isCarOwner: print("Can drive")
case 80...100: print("Cann't drive")
default: print("?")
}


//practice

let passScore = 60
let myScore = 90

switch myScore {
case 0...passScore: print("Your score lower then passing score")
case passScore...100: print("Congratulation! You are recieved")
default: print("I don't understand what is your score")
}


func passOrNot(passingScore: Int, score: Int) {
    guard myScore > passScore else {
        print("Your score lower then passing score")
        return
    }
    print("Congratulation! You are recieved")
}

passOrNot(passingScore: passScore, score: myScore)

//------------------2-------------
let dayOfWeek = 6
var isWeekend = false

if dayOfWeek == 6 || dayOfWeek == 7 {
    isWeekend.toggle()
}

switch dayOfWeek {
case 1: print("Monaday")
case 2: print("Tuesday")
case 3: print("Wednesday")
    fallthrough
case 4: print("Thusday")
case 5: print("Friday")
case 6 where isWeekend: print("Satuday")
case 7 where isWeekend: print("Sunday")
default: print("Unknown day of week")
}
