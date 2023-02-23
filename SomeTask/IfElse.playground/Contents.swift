import UIKit

let firstFibo = 1
let secondFibo = 2
let thirdFibo = 3
let fourthFibo = 5
let fifthFibo = 8
let sixthFibo = 13

var sum = firstFibo + secondFibo + thirdFibo + fourthFibo + fifthFibo + sixthFibo
var mult = firstFibo * secondFibo * thirdFibo * fourthFibo * fifthFibo * sixthFibo

sum -= 10
mult = mult / sum

print("Difference between mult and sum = \(mult - sum)")


var a = -3
var b = 10
var c = 25
var d = 20

if a > b {
    print("1")
    
    if (a + b) < c {
        print("4")
    } else if (a - b) > c {
        print("5")
    }
} else if a < b {
    print("2")
    
    if a < c || b < c {
        print("6")
    } else if a > d && c > d && d > b {
        print("7")
    }
} else {
    print("3")
    
    if a < 0 {
        print("8")
    }
}
