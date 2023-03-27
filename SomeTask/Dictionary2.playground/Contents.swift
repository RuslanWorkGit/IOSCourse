import UIKit

//MARK: Task-1
var country = ["Ukraine" : "Kyiv", "UK" : "London", "USA" : "Washington"]
var postIndex = ["Kyiv" : 03056, "Sumy" : 40005, "London" : 57820]
var student = ["Ruslan" : true, "Andrew" : false, "Anna" : true]

//MARK: Task-2
let summaryDictioanry: [String : Any] = ["Ukraine" : country["Ukraine"], "Kyiv" : postIndex["Kyiv"], "Ruslan" : student["Ruslan"]]

//MARK: Task-3
country.removeValue(forKey: "USA")
postIndex["Sumy"] = nil
student.removeValue(forKey: "Andrew")

//MARK: TAsk-4
let keyArray = summaryDictioanry.keys
let valueArray = summaryDictioanry.values

//MARK: Task-5
print("Key value: \(keyArray)")
print("Value of array: \(valueArray)")

//MARK: Task-6

var sortedArrayKey = keyArray.sorted()
let firstKey = sortedArrayKey.first
let lastKey = sortedArrayKey.last

sortedArrayKey[0] = lastKey!
sortedArrayKey[sortedArrayKey.count - 1] = firstKey!


