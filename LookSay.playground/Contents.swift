import UIKit

func lookSay(_ number: Int) -> Int {
     var ans: [Character] = ["1"]
    for _ in 1..<number {
        var temp: [Character] = []
        var i = 0
        while i < ans.count {
            let char = ans[i]
            var j = 0
            while i < ans.count && ans[i] == char {
                j += 1
                i += 1
            }
            temp.append(Character(String(j)))
            temp.append(char)
        }
        ans = temp
    }
    return Int(String(ans)) ?? 0
}

lookSay(7)

//func lookSay(_ number: Int) -> Int {
//    let digitsArray = getDigits(number)
//    var emptyArray : [Int] = []
//    var i = 0
//    var j = 1
//    var count = 1
//    if digitsArray.count == 1 {
//        emptyArray.append(1)
//        emptyArray.append(digitsArray[0])
//
//    } else {
//        while i < digitsArray.count {
//              if digitsArray[i] == digitsArray[j]{
//                count += 1
//                j += 1
//              } else {
//                emptyArray.append(count)
//                emptyArray.append(digitsArray[i])
//                count = 1
//                j += 1
//              }
//              if j == digitsArray.count {
//                j = digitsArray.count - 1
//                emptyArray.append(count)
//                emptyArray.append(digitsArray[j])
//                break
//              }
//              i += 1
//          }
//    }
//    var keepIndex = ""
//    for item in emptyArray {
//        keepIndex += String(item)
//    }
//    let final = Int(keepIndex)
//    return final ?? 10
//}
//
//func getDigits(_ num: Int) -> [Int] {
//        var result = [Int]()
//        var remaining = abs(num)
//        while remaining > 0 {
//            result.insert(remaining % 10, at: 0)
//            remaining /= 10
//        }
//        return result
//}



//func countAndSay(_ n: Int) -> String {
//       guard n > 0 else { return "" }
//
//       var result = "1"
//       for _ in 1..<n {
//           let tmpResult = result
//           result = ""
//
//           var currentDigitCounter = 1
//           var currentDigit = tmpResult[String.Index(encodedOffset: 0)]
//           for i in 1..<tmpResult.count {
//               let digit = tmpResult[String.Index(encodedOffset: i)]
//               if currentDigit == digit {
//                   currentDigitCounter += 1
//               } else {
//                   result += "\(currentDigitCounter)\(currentDigit)"
//                   currentDigit = digit
//                   currentDigitCounter = 1
//               }
//           }
//           result += "\(currentDigitCounter)\(currentDigit)"
//       }
//
//       return result
//   }
//
//countAndSay(11)

//public static String lookandsay(String number){
//StringBuilder result= new StringBuilder();
//
//char repeat= number.charAt(0);
//number= number.substring(1) + " ";
//int times= 1;
//
//for(char actual: number.toCharArray()){
//    if(actual != repeat){
//        result.append(times + "" + repeat);
//        times= 1;
//        repeat= actual;
//    }else{
//        times+= 1;
//    }
//}
//return result.toString();


private extension String {
    subscript (index: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: index)]
    }
}

class Easy_038_Count_And_Say {
    class func countAndSay(_ n: Int) -> Int {
        var result: String = "1"
        for _ in 0 ..< n {
            let previous: String = result
            result = ""
            var counter = 1
            var say: Character = previous[0]
            for j in 1 ..< previous.count {
                if previous[j] != say {
                    result = "\(result)\(counter)\(say)"
                    counter = 1
                    say = previous[j]
                } else {
                    counter += 1
                }
            }
            result = "\(result)\(counter)\(say)"
        }
        return Int(String(result)) ?? 0
    }
}

Easy_038_Count_And_Say.countAndSay(1)

//func lookAndSay(_ seq: Int) -> Int {
//  var result = [Int]()
//  var cur = seq[0]
//  var curRunLength = 1
//
//  for i in seq.dropFirst() {
//    if cur == i {
//      curRunLength += 1
//    } else {
//      result.append(curRunLength)
//      result.append(cur)
//      curRunLength = 1
//      cur = i
//    }
//  }
//
//  result.append(curRunLength)
//  result.append(cur)
//
//  return result
//}
//
//var seq = [1]
//
//for i in 0..<10 {
//  print("Seq \(i): \(seq)")
//  seq = lookAndSay(seq)
//}

//lookAndSay([1,2])
