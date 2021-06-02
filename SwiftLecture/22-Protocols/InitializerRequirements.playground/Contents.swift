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
 # Initializer Requirements
 ![init](init.png)
 */


protocol Figure {
    var name: String { get }
    init(n: String)
}

struct Rectangle: Figure {
    var name: String
    
    init(n: String) {
        name = n
    }
}

class Circle: Figure {
    var name: String
    
    required init(n: String) {
        name = n
    }
}

final class Triangle: Figure {
    var name: String
    
    init(n: String) {
        name = n
    }
}

class Oval: Circle {
    var prop: Int
    
    init() {
        prop = 0
        super.init(n: "Oval")
    }
    
    required convenience init(n: String) {
        self.init()
    }
}

protocol GrayScale {
    init?(white: Double)
}

struct Color: GrayScale {
    init(white: Double) {
        
    }
}

























