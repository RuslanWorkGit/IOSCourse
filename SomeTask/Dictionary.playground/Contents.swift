import UIKit

var countryInfo: [String: String] = ["Ukraine": "Paris", "Poland": "Warsaw", "France": "Paris"]
var citiesIndex = ["Lviv": 02570, "Kyiv": 03056, "Sumy": 04005]
var studentsStatus: Dictionary<String, Bool> = ["Ruslan": true, "Andrew": false, "Bogdan": true]

let countryInfoKeys = countryInfo.keys.sorted()
let citiesIndexKeys = citiesIndex.keys.sorted()
let studentStatusKeys = studentsStatus.keys.sorted()


let anyDictionary: [String : Any] = [countryInfoKeys[1] : countryInfo[countryInfoKeys[1]], citiesIndexKeys[0] : citiesIndex[citiesIndexKeys[0]], studentStatusKeys[2] : studentsStatus[studentStatusKeys[2]]]

print(anyDictionary)

countryInfo.removeValue(forKey: "France")
citiesIndex.removeValue(forKey: "Lviv")
studentsStatus.removeValue(forKey: "Andrew")

var anyDictionaryKeys = anyDictionary.keys.sorted()
var anyDictionaryValues = anyDictionary.values
print("Keys is - \(anyDictionaryKeys), the value is - \(anyDictionaryValues)")



let firstKeys = anyDictionaryKeys.first
let lastKeys = anyDictionaryKeys.last

anyDictionaryKeys[0] = lastKeys!
anyDictionaryKeys[anyDictionaryKeys.count - 1] = firstKeys!

print()
print("Changed the place first and last keys - \(anyDictionaryKeys)")
