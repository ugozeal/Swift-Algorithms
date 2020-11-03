import UIKit


//import Foundation
extension String {

    func isBalanced() -> Bool {
        switch self.filter("()[]{}".contains)
            .replacingOccurrences(of: "()", with: "")
            .replacingOccurrences(of: "[]", with: "")
            .replacingOccurrences(of: "{}", with: "") {
        case "": return true
        case self: return false
        case let next: return next.isBalanced()
        }
    }

}

var str = "(){}[]"
str.isBalanced()

func validBraces(_ braces: String) -> Bool {
    braces.isBalanced()
//    let dictionaryPair: [Character: Character] = ["(": ")", "[": "]", "{": "}"]
//    var characterArray: [Character] = []
//    for char in braces {
//        if let matchingPair = dictionaryPair[char] {
//            print(" matchingPair: \(matchingPair)")
//            characterArray.append(matchingPair)
//            print("Append: \(characterArray)")
//        } else if characterArray.last == char {
//            characterArray.popLast()
//            print("PopLast: \(characterArray)")
//        } else {
//            return false
//        }
//    }
//    print(characterArray)
//    return characterArray.isEmpty
}



validBraces("(){}[]" )
validBraces("(}")

