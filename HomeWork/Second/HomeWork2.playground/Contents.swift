import UIKit

class Sailor {
    
    let name: String
    
    func introduceMyself() {
       print("Hello, my name is \(name)")
    }
    
    init(sailorName: String) {
        name = sailorName
    }
}

let firstSailor = Sailor(sailorName: "Andrew")
firstSailor.introduceMyself()
let secondSailor = Sailor(sailorName: "Ruslan")
let thirdSailor = Sailor(sailorName: "Bogdan")
let fourtSailor = Sailor(sailorName: "Eugene")
let fifthSailor = Sailor(sailorName: "Arsen")


class Ship {
    let name: String
    let crew: [Sailor]
    
    func introduceAll() {
        print("We are from \(name) ship")
    }
    
    init(shipName: String, sailors: [Sailor]) {
        name = shipName
        crew = sailors
    }
}

let commanderShip = Ship(shipName: "Antonov", sailors: [firstSailor, secondSailor, thirdSailor, fourtSailor, fifthSailor])

commanderShip.introduceAll()

//MARK: Task-4

class Titanic: Ship {
    override func introduceAll() {
        super.introduceAll()
        
        print("Ми з корабля \(name)")
    }
}

let titanic = Titanic(shipName: "Titanic", sailors: [firstSailor])
titanic.introduceAll()


//MARK: Task-5

class Claculator {
    
    
}
