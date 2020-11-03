import UIKit

//extension String{
//   func index(of pattern: String) -> Index? {
//      // 1
//      for i in indices {
//
//        // 2
//        var j = i
//        var found = true
//        for p in pattern.indices {
//          guard j != endIndex && self[j] == pattern[p] else { found = false; break }
//          j = index(after: j)
//        }
//        if found {
//          return i
//        }
//      }
//      return nil
//    }
//}
//
//let text = "HELLO WORLD"
//text.index(of: "ELL") // returns 1
//text.index(of: "LD") // returns 9
//
//
//func arrayOfMultiples (_ num: Int, _ lenght: Int) -> [Int]{
//    var newArray = [Int]()
//    var i = 1
//    var multiplesOfNum: Int
//
//    while i < lenght+1 {
//        multiplesOfNum = i * num
//        newArray.append(multiplesOfNum)
//        i+=1
//    }
//    return newArray
//}
//
//arrayOfMultiples(7, 5)  //[7, 14, 21, 28, 35]
//arrayOfMultiples(12, 10)  //[12, 24, 36, 48, 60, 72, 84, 96, 108, 120]
//arrayOfMultiples(17, 6)  //[17, 34, 51, 68, 85, 102]
//
//
//let str = "abcdefghabcd"
//if let index = str.index(of: "bcd") {
//   print(index)
//}











//func accum(_ s: String) -> String {
//    Initialize an empty
//    var str = s.split(separator: " ").joined(separator: "-")
//    print(str)
//    var valueToPrint: String = ""
//    for (n, x) in s.enumerated() {
//        valueToPrint += "\(String(x.uppercased()))\(String(repeating: x.lowercased(), count: n))-"
//    }
//    String(valueToPrint.removeLast())
//    let finalOutput = String(valueToPrint)
//    return finalOutput
//}
//
//print(accum("abcdcv"))

//func accum(_ s: String) -> String {
//    var result = ""
//    for (idx, letter) in s.enumerated() {
//        result += String(letter.uppercased()) + String(repeating: letter.lowercased(), count: idx) + "-"
//    }
//    return String(result.dropLast())
//}

//print(accum("abcdcv"))



//accum("ZpglnRxqenU")









//
//func correct(_ timeString: String?) -> String? {
//
//  if let newTime = timeString {
////    for date in newTime {
////
////    }
//    let array = newTime.split(separator: ":")
//
//    guard let hour = Int(array[0]) else { return nil }
//    guard let min = Int(array[1]) else { return nil }
//    guard let sec = Int(array[2]) else {return nil}
//
//    let secDiv = sec / 60
//    let secRem = sec % 60
//    let minDiv = min / 60
//    let minRem = min % 60
//
//    let finalHour = reCursion(hour) + minDiv
//    let finalSec = secRem
//    let finalMin = minRem + secDiv
//
////    var joinArray = String(array.joined())
////    var finalString = String(joinArray.enumerated().map { $0 > 0 && $0 % 2 == 0 ? [":", $1] : [$1]}.joined())
////    var str = "\(hour) \(min) \(sec)"
//
//    //print (str)
//
//
//  }
//
//  return nil
//}
//
//
//func reCursion(_ num: Int) -> Int{
//    let diff = num - 24
//    if diff < 24 {
//        return abs(diff)
//    }
//    return reCursion(diff)
//}
//
//correct("20:70:39")
//correct("52:10:01")



func dnaComplement(_ dna: String) -> String {
    var dnaVal = ""
//    if dna == ""{
//        return ""
//    }
    for alpha in dna{
        let letterA = "A"
        let letterT = "T"
        let letterC = "C"
        let letterG = "G"
        
        if alpha == "A"{
            let alphat = letterT
            dnaVal+=alphat
        }
        if alpha == "T"{
            let alphaA = letterA
            dnaVal+=alphaA
        }
        if alpha == "G"{
            let alphaC = letterC
            dnaVal+=alphaC
        }
        if alpha == "C"{
            let alphaG = letterG
            dnaVal+=alphaG
        }
    }
return dnaVal
}


dnaComplement("")
//dnaComplement("GTATCGATCGATCGATCGATTATATTTTCGACGAGATTTAAATATATATATATACGAGAGAATACAGATAGACAGATTA")


















