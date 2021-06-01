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
 # Overloading
 */


func process(value: String) {
    print("process String")
}

func process(value: String, anotherValue: String) { // Rule #1
    
}

func process(value: Int) { // Rule #2
    print("process Int")
}

func process(_ value: String) { // Rule #3
    
}

// Rule #4 - 안쓰는 것이 낫다. 차라리 함수명을 바꾸자.
func process(value: Double) -> Int {
    return Int(value)
}

func process(value: Double) -> String? {
    return String(value)
}

process(value: 0)
process(value: "HI")

process(value: "HI")
process("HI")

let resultInt1: Int = process(value: 12.34)
//or
let resultInt2 = process(value: 12.34) as Int
let resultOptionalString: String? = process(value: 12.34)

struct Rectangle {
    func area() -> Double {
        print("Instance Method")
        return 0.0
    }
    
    static func area() -> Double {
        print("Type Method")
        return 0.0
    }
}

let r = Rectangle()
r.area()
Rectangle.area()




















