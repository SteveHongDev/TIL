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
//optional version of initializer

/*:
 # Failable Initializer
 ![failable](failable.png)
 */

struct Position {
    let x: Double
    let y: Double
    
    init?(x: Double , y: Double) {
        guard x >= 0.0, y >= 0.0 else { return nil }
        
        self.x = x
        self.y = y
    }
    
    init!(value: Double) {
        guard value >= 0.0 else { return nil }
        
//        self.x = value
//        self.y = value
//        
        self.init(x:value, y: value)
    }
    
//    init(value: Int) {
////        self.x = value
////        self.y = value
//        self.init
//    }
}


var a = Position(x: 12, y: 34)

a = Position(x: -12, y: 0)

var b: Position = Position(value: 12)
b
b = Position(value: -12) // IUO이므로 non-optional에 잘못된 것을 넣으면 crash -> 그래서 보통은 init?을 쓴다








