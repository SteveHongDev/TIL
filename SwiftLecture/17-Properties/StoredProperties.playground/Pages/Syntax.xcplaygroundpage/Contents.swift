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
 # Stored Properties
 ![syntax](syntax1.png)
 */

struct Person {
    let name: String = "Steve"
    var age: Int = 26
}





/*:
 # Explicit Member Expression
 ![syntax](syntax2.png)
 */

var p = Person() // 구조체일 때는 p가 let인 경우, 구조체 내 모든 속성이 상수가 된다.
p.name
p.age

p.age = 30





/*:
 # Lazy Stored Properties
 ![lazy](lazy.png)
 ![lazy-syntax](lazy-syntax.png)
 */

struct Image {
    init() {
        print("new image")
    }
}

struct BlogPost {
    let title: String = "Title"
    let content: String = "Content"
    lazy var attachment: Image = Image()
    
    let date: Date = Date()
    
    lazy var formattedDate: String = {
        let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .medium
        return f.string(from: date) // date를 받아오기 위하여 lazy로 선언해서 단계를 나눔
    }()
}

var post = BlogPost()
post.attachment
















