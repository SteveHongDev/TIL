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
 # Generic Types
 ![generic-type](generic-type.png)
 */

struct Color<T> {
    var red: T
    var green: T
    var blue: T
}

var c = Color(red: 128, green: 80, blue: 200)

//let d: Color<Double> //= Color(red: 128.0, green: 80.0, blue: 200.0)

//let arr: Array<Int>
//
//let dict: Dictionary<String, Double>

extension Color where T == Int { // Type parameter를 넣지 못한다. 동일한 파라미터를 사용해야만 하기 때문이다
    func getComponents() -> [T] {
        return [red, green, blue]
    }
}

let intColor = Color(red: 1, green: 2, blue: 3)
intColor.getComponents()

let dblColor = Color(red: 1.0, green: 2.0, blue: 3.0)
//dblColor.getComponents() FixedWidthInteger때문에 Double에서는 extension이 추가되지 않는다










