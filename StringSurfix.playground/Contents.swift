import UIKit

//func stringSuffix(_ str: String) -> Int {
//    var newStr = str
//    var oldArray = Array(str)
//    var count = 0
//    repeat  {
//        var initialCount = 0
//        for i in 0..<newStr.count{
//            for j in 0..<oldArray.count{
//                if String(i) != String(oldArray[j]){
//                    break
//                }
//            }
//            initialCount += 1
//
//        }
//        count += initialCount
//        newStr = String(newStr.dropFirst())
//    } while newStr.count > 0
//    print(count)
//    return count
//}
//
//stringSuffix("abababa")

func stringSuffixw(_ str: String) -> Int {
  let strArray = Array(str)
  var suffix = str
  var count = 0

  while suffix.count > 0 {
    var innerCount = 0

    for (index, char) in suffix.enumerated() {
      if char != strArray[index] {
        break
      }

      innerCount += 1
    }

    count += innerCount
    suffix = String(suffix.dropFirst())
  }

  return count
}
stringSuffixw("ababaa")
