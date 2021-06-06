import UIKit

/*:
 # Short-circuit Evaluation
 */

//false &&
//true ||


var a = 1
var b = 1

func updateLeft() -> Bool {
    a += 1
    return false
}

func updateRight() -> Bool {
    b += 1
    return true
}

//side effect가 발생하는 것은 앞으로 빼라
let resultA = updateLeft()
let resultB = updateRight()

if resultA && resultB {
    
}

a
b



