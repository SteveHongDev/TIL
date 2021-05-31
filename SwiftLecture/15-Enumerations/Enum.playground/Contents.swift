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
 # Enumerations
 ![enum](enum.png)
 */

let left = "left"
let center = "center"
let right = "right"

var alignment = center

if alignment == "Center" {
    
}






/*:
 ## Syntax
 ![syntax](enum-syntax.png)
 */

enum Alignment {
    case left
    case center
    case right
}

Alignment.center

Alignment.right

var textAlignment = Alignment.center

// 열거형은 값이다.

textAlignment = .left

//textAlignment = .Left
//textAlignment = .justify


if textAlignment == .center {
    
}

switch textAlignment {
case .left:
    print("left")
case .center:
    print("center")
case .right:
    print("right")
}

if textAlignment == .left {
    print("left")
} else if textAlignment == .center {
    print("center")
} else {
    print("right")
}





























