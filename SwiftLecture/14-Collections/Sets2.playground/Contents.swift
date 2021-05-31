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
import Foundation
/*:
 # Comparing Sets
 */

var a: Set = [1, 2, 3, 4, 5, 6, 7, 8, 9]
var b: Set = [1, 3, 5, 7, 9]
var c: Set = [2, 4, 6, 8, 10]
let d: Set = [1, 7, 5, 9, 3]

a == b
a != b

b == d


b.elementsEqual(d)

a.isSubset(of: a) // 부분집합
a.isStrictSubset(of: a) // 진부분집합

b.isSubset(of: a)
b.isStrictSubset(of: a)


a.isSuperset(of: a) // 상위집합
a.isStrictSuperset(of: a) // 진상위집합

a.isSuperset(of: b)
a.isStrictSuperset(of: b)

a.isSuperset(of: c)
a.isStrictSuperset(of: c)


a.isDisjoint(with: b) // 교집합이 있으면 false, 서로소면 true
a.isDisjoint(with: c)
b.isDisjoint(with: c)















/*:
 # Combining Sets
 */

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]


var result = b.union(c) // 합집합

result = b.union(a)

b.formUnion(c) // b에 b 합집합 c를 원본에 직접 변경
b


a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]

result = a.intersection(b) // 교집합

result = c.intersection(b)

a.formIntersection(b)
a

b.formIntersection(c)
b

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]

result = a.symmetricDifference(b) // 여집합

result = c.symmetricDifference(b)

a.formSymmetricDifference(b)
a

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]

result = a.subtracting(b) // a - b

a.subtract(b)
a













