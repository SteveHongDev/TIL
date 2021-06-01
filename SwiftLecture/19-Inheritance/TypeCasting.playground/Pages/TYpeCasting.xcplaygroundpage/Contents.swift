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
 # Type Casting
 */

class Figure {
   let name: String
   
   init(name: String) {
      self.name = name
   }
   
   func draw() {
      print("draw \(name)")
   }
}

class Triangle: Figure {
   override func draw() {
      super.draw()
      print("🔺")
   }
}

class Rectangle: Figure {
   var width = 0.0
   var height = 0.0
   
   override func draw() {
      super.draw()
      print("⬛️ \(width) x \(height)")
   }
}

class Square: Rectangle {
   
}

class Circle: Figure {
   var radius = 0.0
   
   override func draw() {
      super.draw()
      print("🔴")
   }
}



/*:
 ## Type Check Operator
 ![type-check](type-check.png)
 */

let num = 123

num is Int
num is Double
num is String

let t = Triangle(name: "Tri")
let r = Rectangle(name: "Rect")
let s = Square(name: "Sq")
let c = Circle(name: "Cir")

r is Rectangle
r is Figure // upcasting은 가능
r is Square // downcasting은 불가






/*:
 ## Type Casting Operator
 ![type-casting](type-casting.png)
 */

let nsstr = "str" as NSString

//"str" as Int

t as? Triangle
t as! Triangle

var upcasted: Figure = s
upcasted = s as Figure

upcasted as? Square
upcasted as! Square
upcasted as? Rectangle
upcasted as! Rectangle

//upcasted as? Circle
//upcasted as! Circle

if let c = upcasted as? Circle {
    
} // downcasting 시에 권장


let list = [t, r, s, c] // upcasting되어서 전체가 Figure class로 저장됨

for item in list {
    item.draw() //Figure로 upcasting되었지만 overriding된 method 호출 - polymorphism
//    item.radius
    
    if let c = item as? Circle {
        c.radius
    }
}















