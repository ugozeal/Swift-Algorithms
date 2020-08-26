import UIKit

let inputString = "sTreSS"

let inputStr1 = "stress"

func nonRepeat (_ input: String) -> String {
    let lowerString = input.lowercased()
    for char in lowerString {
        if lowerString.firstIndex(of: char) == lowerString.lastIndex(of: char) {
            return String(char)
        }
//        if input.caseInsensitiveCompare(lowerString) == ComparisonResult.orderedSame
//        {
//            if input.firstIndex(of: char) == input.lastIndex(of: char) {
//                        return String(char)
//                    }
//        }
        
    }
    return ""
}
print (nonRepeat(inputString))


//let valueExpected = "SUCCESS"
//let valueProvided = "sUccEss"
//
//       if valueExpected.caseInsensitiveCompare(valueProvided) == ComparisonResult.orderedSame
//       {
//           print("Strings are equal")
//       }

func firstNonRepeating(_ str: String) -> String {
    let convToLower = str.lowercased()
    let newArr = Array(convToLower)
    var indexArr = [Int]()
    var i = 0
    
    while (i < newArr.count) {
        if convToLower.firstIndex(of: newArr[i]) == convToLower.lastIndex(of: newArr[i]) {
            indexArr.append(i)
        }
        i = i + 1
    }
    
    let finalIndex = indexArr[0]
    
    let initialStringConvertedToArray = Array(str)
    
    let final = String(initialStringConvertedToArray[finalIndex])
    
    print(final)
    
    return final
}

firstNonRepeating("TtYyiuE")
