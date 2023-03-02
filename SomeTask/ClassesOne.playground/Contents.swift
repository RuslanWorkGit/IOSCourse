import UIKit

class Animal {
    
    var name: String
    var age: Int
    
    init(n: String, a: Int) {
        name = n
        age = a
    }
    
    convenience init() {
        self.init(n: "", a: 0)
    }
    
    func eat() {
        print("Eating!!!")
    }
    
}

let animal1 = Animal(n: "Rabit", a: 4)

let animal3 = Animal()

animal3.name = "Rabbit"
animal3.age = 3
//animal3.eat()

let animal2 = Animal(n: "Cow", a: 5)

let arrayOfAnimal = [animal1, animal2]

//arrayOfAnimal.first?.eat()


//Practice

class Phone {

    var number: Int
    var model: String
    var weight: Int
    
    func getNumber() -> Int{
        print(number)
        return number
    }
    
    func receiveCall(name: String) {
        print("Call \(name)")
    }
    
    func receiveCall(name: String, numberCaller: Int) {
        print("Name is \(name) number is 0\(numberCaller)")
    }
    
    func sendMessage(sendNumber: [Int]) {
        for i in sendNumber {
            print("Send message to number: \(i)")
        }
        
    }
    
    init(n: Int, m: String, w: Int) {
        number = n
        model = m
        weight = w
    }
    
    init(n: Int, m: String, wei: Int = 0) {
        number = n
        model = m
        weight = wei
    }
    
    convenience init() {
        self.init(n: 0, m: "None", w: 0)
    }
}

let myPhone = Phone(n: 12, m: "Iphone", w: 187)
let friendPhone = Phone(n: 10, m: "Iphone", w: 192)
let newPhone = Phone(n: 19192, m: "Iphone")
let unkownPhone  = Phone()

let phoneArray = [myPhone, friendPhone]

//----------------------------------------------------------

print("I have \(myPhone.model) \(myPhone.number) and his weight \(myPhone.weight) gramm")
print("My friend have \(friendPhone.model) \(friendPhone.number) and his weight \(friendPhone.weight) gramm")

//----------------------------------------------------------

for element in phoneArray {
    element.getNumber()
    element.receiveCall(name: "Ruslan")
}

//----------------------------------------------------------

myPhone.receiveCall(name: "Ruslan", numberCaller: 0953853457)
myPhone.sendMessage(sendNumber: [829849842,20840924,092049])

//----------------------------------------------------------
print("This is unknown phone model is \(unkownPhone.model) number is \(unkownPhone.number) and his weight \(unkownPhone.weight) gramm")
