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
    }


}

