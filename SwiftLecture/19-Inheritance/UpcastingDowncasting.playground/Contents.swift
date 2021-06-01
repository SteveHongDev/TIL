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
 # Upcasting & Download Casting
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

let f = Figure(name: "Unknown")
f.name

let r = Rectangle(name: "Rect")
r.width
r.height
r.name

let s: Figure = Square(name: "Sq") // upcasting -> no error
//s.name
//s.width
//s.height

let downCastedS = s as! Rectangle // Figure -> Rectangle -> Square ==> Square 객체를 Figure로 upcasting한 것을 Square의 superclass이고 Figure의 subclass인 것으로 downcasting 가능
downCastedS.name
downCastedS.width
downCastedS.height


class Rhombus: Square {
    var angle = 45.0
}

let dr = s as! Rhombus // Figure -> Rectangle -> Square -> Rhombus ==> Square 객체를 Square의 subclass로 downcasting은 불가능








