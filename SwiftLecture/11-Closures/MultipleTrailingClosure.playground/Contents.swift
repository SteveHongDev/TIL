//
//  Mastering Swift
//  Copyright (c) KxCoding <help@kxcoding.com>
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
 # Multiple Trailing Closure
 */

func multi(first: () -> (), second: () -> (), third: () -> ()) {  // argument label 생략 시에는 multiple trailing closure 사용 불가능
   
}

// ~ Swift 5.2

multi(first: { }, {
    
    
    
    
    
    
    
}) { // 가독성 떨어짐
    
}



// Swift 5.3 ~

multi {
    <#code#>
} second: {
    <#code#>
} third: {
    <#code#>
}

UIView.animate(withDuration: 0.3, animations: {
    
    
    
    
}) { (finished) in
    
    
}


UIView.animate(withDuration: 0.3) {
    <#code#>
} completion: { (finished) in
    <#code#>
}






















