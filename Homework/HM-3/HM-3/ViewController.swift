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

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

