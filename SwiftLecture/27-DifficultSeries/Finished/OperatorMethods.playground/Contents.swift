//
//  Copyright (c) 2018 KxCoding <kky0317@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
import UIKit

/*:
 # Operator Methods
 ## Syntax
 ![syntax](syntax.png)
 */

"a" == "a"

struct Point {
    var x = 0.0
    var y = 0.0
}

extension Point: Equatable {
//    static func ==(p1: Point, p2: Point) -> Bool {
//        return (p1.x == p2.x) && (p1.y == p2.y)
//    }
}

let p1 = Point(x: 12, y: 34)
let p2 = Point(x: 67, y: 89)


p1 == p2
p1 != p2

extension Point {
    static prefix func -(pt: Point) -> Point {
        return Point(x: -pt.x, y: -pt.y)
    }
}

let p3 = -p1
p3.x
p3.y

extension Point {
    static postfix func ++(pt: inout Point) -> Point {
        let ret = pt
        pt.x += 1
        pt.y += 1
        return ret
    }
}

var p4 = Point(x: 1.0, y: 2.0)
let p5 = p4++

p5.x
p5.y

p4.x
p4.y

extension Point {
    static func +=(lhs: inout Point, rhs: Point) -> Point {
        lhs.x += rhs.x
        lhs.y += rhs.y
        return lhs
    }
}
var p6 = Point(x: 1.0, y: 2.0)
var p7 = Point(x: 8.0, y: 10.0)

p6 += p7
p6.x
p6.y
p7.x
p7.y















