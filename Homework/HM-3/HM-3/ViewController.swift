//
//  ViewController.swift
//  HM-3
//
//  Created by Ruslan Liulka on 01.10.2024.
//

import UIKit

//Protocol

protocol Vehicle {
    var name: String { get }
    func startEngine()
    func drive()
    func stopEngine()
}

protocol ElecriceVehicle {
    func chargeBattery()
}

struct Car: Vehicle {
    var name: String { return "Audi"}
    
    func startEngine() {
        print("\(name) start the engine")
    }
    
    func drive() {
        print("\(name) is driving")
    }
    
    func stopEngine() {
        print("\(name) stop the engine")
    }
    
    
}

struct Bike: Vehicle {
    var name: String { return "Shimano"}
    
    func startEngine() {
        print("\(name) don't have the engine")
    }
    
    func drive() {
        print("\(name) is driving")
    }
    
    func stopEngine() {
        print("No engine no stop for \(name)")
    }
    
    
}

struct Motorcycle: Vehicle {
    var name: String { return "PitBike"}
    
    func startEngine() {
        print("\(name) start the engine")
    }
    
    func drive() {
        print("\(name) is driving")
    }
    
    func stopEngine() {
        print("\(name) stop the engine")
    }
    
    
}

struct ElectricCar: Vehicle, ElecriceVehicle {
    var name: String { return "Tesla"}
    
    func startEngine() {
        print("\(name) start the electric engine")
    }
    
    func drive() {
        print("\(name) start driving without engine noise")
    }
    
    func stopEngine() {
        print("\(name) stop with using accelerator for engine")
    }
    
    func chargeBattery() {
        print("\(name) need to go charging")
    }
    
    
}

extension Int {
    func myPow(_ power: Int) -> Int {
        guard power >= 0 else { return 0}
        return power == 0 ? 1 : self * myPow(power - 1)
    }
}

extension String {
    func isPalindrom() -> Bool {
        let text = self.lowercased()
        let filteredText = text.filter { $0.isLetter }
        let isEcual = filteredText == String(filteredText.reversed())
        return isEcual
    }
}

//GEneric

func swap<T>(_ a: inout T, _ b: inout T) {
    let tempA = a
    a = b
    b = tempA
}

func getTuple<T>(first: T, second: T) -> (first: T, second: T) {
    (first, second)
}

func genricAdd<T: Numeric>(first: T, second: T) -> T {
    first + second
}

//func createDictionary<Key: Hashable, Value>(key: Key, value: Value) -> [Key:Value] {
//    var dictionary: [Key: Value] = [:]
//
//}

struct GenericDictionary<Key: Hashable, Value> {
    var dictionary: [Key: Value] = [:]
    
    mutating func add(key: Key, value: Value) {
        dictionary[key] = value
    }
    
    func getValue(for key: Key) -> Value? {
        dictionary[key]
    }
}

struct MyStack<Element> {
    private var elements: [Element] = []
    
    mutating func add(_ element: Element) {
        elements.append(element)
    }
    
    mutating func pop() -> Element? {
        guard !elements.isEmpty else { return nil }
        return elements.popLast()
    }
    
    func peek() -> Element? {
        guard !elements.isEmpty else { return nil }
        return elements.last
    }
    
    func checkIsEmpty() -> Bool {
        elements.isEmpty
    }
    
    func checkCount() -> Int {
        elements.count
    }
}

func testMyStack() {
    var intStack = MyStack<Int>()
    
    // Тест 1: Перевірка початкового стану (порожній стек)
    assert(intStack.checkIsEmpty() == true, "Test 1 Failed: Стек має бути порожнім")
    assert(intStack.checkCount() == 0, "Test 1 Failed: Кількість елементів має бути 0")
    
    // Тест 2: Додавання елементів (push)
    intStack.add(10)
    intStack.add(20)
    intStack.add(30)
    assert(intStack.checkIsEmpty() == false, "Test 2 Failed: Стек не має бути порожнім після додавання")
    assert(intStack.checkCount() == 3, "Test 2 Failed: Кількість елементів має бути 3")
    
    // Тест 3: Перевірка останнього елементу (peek)
    let lastElement = intStack.peek()
    assert(lastElement == 30, "Test 3 Failed: Останній елемент має бути 30")
    
    // Тест 4: Видалення елементу (pop)
    let poppedElement = intStack.pop()
    assert(poppedElement == 30, "Test 4 Failed: Видалений елемент має бути 30")
    assert(intStack.checkCount() == 2, "Test 4 Failed: Кількість елементів має бути 2 після видалення")
    
    // Тест 5: Перевірка після видалення всіх елементів
    intStack.pop() // Видаляємо 20
    intStack.pop() // Видаляємо 10
    assert(intStack.checkIsEmpty() == true, "Test 5 Failed: Стек має бути порожнім після видалення всіх елементів")
    assert(intStack.pop() == nil, "Test 5 Failed: Видалення з порожнього стеку має повертати nil")
    
    // Тест 6: Стек зі String
    var stringStack = MyStack<String>()
    stringStack.add("Hello")
    stringStack.add("World")
    assert(stringStack.peek() == "World", "Test 6 Failed: Останній елемент має бути 'World'")
    stringStack.pop()
    assert(stringStack.peek() == "Hello", "Test 6 Failed: Після видалення останній елемент має бути 'Hello'")
    
    print("Усі тести пройдено успішно!")
}



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let num1 = 10
        let num2 = 2
        let num3 = 4
        
        let text = "Hello World"
        let text1 = "txt"
        let text2 = "vovov"
        
        print(num1.myPow(3))
        print(num2.myPow(4))
        print(num3.myPow(3))
        
        print(text.isPalindrom())
        print(text1.isPalindrom())
        print(text2.isPalindrom())
        
        var one = 1
        var two = 2
        
        swap(&one, &two)
        print(one)
        print(two)
        
        var firtsText = "Hello"
        var secondText = "World"
        
        swap(&firtsText, &secondText)
        print(firtsText)
        print(secondText)
        
        var createMyDict = GenericDictionary<Int, String>()
        createMyDict.add(key: 1, value: "one")
        createMyDict.add(key: 2, value: "two")
        print(createMyDict.getValue(for: 1))
        
        if let firtsText = createMyDict.getValue(for: 1) {
            print("First is \(firtsText)")
        } else {
            print("Key is not found")
        }
        
        testMyStack()
    }
}

