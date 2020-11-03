import UIKit

func primeString(_ s: String) -> Bool {
    let newString = Set(s)
//    for num in s {
//        if let matching = newString[Set(s)] {
//
//        }
//    }
//    var letters = Array(s)
//    var count = 0
//       for letter in letters {
//           if letter == newString {
//               count += 1
//           }
//       }
    //if count % 2
//    var
//    var words = s.components(separatedBy: " ")
//    var wordcount = [String: Int]()
//        for word in words {
//            wordcount.updateValue(Int(s,word), forKey: word)
//        }
        //return wordcount
//    var words = s.components(separatedBy: " ")
//    var anotherStr = String(newString)
//    var twoStr = "u"
//    var count = 0
//        for thing in words {
//            if thing == twoStr {
//                count += 1
//                print(count)
//            }
//        }
//    print(count)
    
    var dict: [Character: Int] = [:]

       for (index, char) in s.enumerated() {
           if dict[char] != nil { return false }
           dict[char] = index
       }

       return true

}

primeString("abcabcabcabc")
primeString("utdutdtdutd")
primeString("a")
primeString("abcd")
