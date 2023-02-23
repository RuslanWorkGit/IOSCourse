import UIKit

let numberInt: Int = 21
let numberFloat: Float = 13.5
let numberDouble: Double = 42.625

let sum: Double = Double(numberInt) + Double(numberFloat) + numberDouble

print(sum)

// Typealias

typealias Name = String
typealias Age = Int
typealias Money = Float


let film: (name: Name, yearRelise: Age) = ("Avatar", 2008)
let phone: (name: Name, price: Money) = ("Iphone XR", 800)
let country: (name: Name, capital: Name) = ("Ukraine", "Kyiv")

print("Film name - \(film.name), phone name - \(phone.name), country name - \(country.name)")
print()
print("Film date realise is - \(film.yearRelise), phone price is - \(phone.price), country capital is - \(country.capital)")
