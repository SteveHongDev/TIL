import UIKit

var str = "\"Hello\", Swift 5"
var rawStr = #""Hello", Swift 5"#

str = "Lorem\nIpsum"
rawStr = #"Lorem\#nIpsum"#
rawStr = ###"Lorem\###nIpsum"###

let value = 123
str = "The value is \(value)"
rawStr = #"The value is \#(value)"#




print("=== str ====")
print(str)
print("=== raw str ===")
print(rawStr)

//정규식에서 유용
var zipCodeRegex = "^\\d{3}-?\\d{3}$" // Dirty
zipCodeRegex = #"^\d{3}-?\d{3}$"#

let zipCode = "123-456"
if let _ = zipCode.range(of: zipCodeRegex, options: [.regularExpression]) {
    print("valid")
}



//New String Interpolation System

struct Size {
    var width = 0.0
    var height = 0.0
}

let s = Size(width: 1.2, height: 3.4)
print("\(s)")

//extension Size: CustomStringConvertible {
//    var description: String {
//        return "\(width) x \(height)"
//    }
//}

extension String.StringInterpolation {
    mutating func appendInterpolation(_ value: Size) {
        appendLiteral("\(value.width) x \(value.height)")
    }
    
    mutating func appendInterpolation(_ value: Size, style: NumberFormatter.Style) {
        let formatter = NumberFormatter()
        formatter.numberStyle = style
        
        if let width = formatter.string(for: value.width), let height = formatter.string(for: value.height) {
            appendInterpolation("\(width) x \(height)")
        } else {
            appendInterpolation("\(value.width) x \(value.height)")
        }
    }
}

print("\(s, style: .spellOut)")

















