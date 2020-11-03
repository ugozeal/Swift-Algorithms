import UIKit


func palindromeChainLength(_ num: Int) -> Int {
     let convNumToString = String(num)
    let reversed = String(convNumToString.reversed())
     let changeReversedBackToInt = Int(reversed)!
     var count = 0
     var sum : Int
     while count < convNumToString.count {
         count = 0
         sum = -1
         if reversed == convNumToString {
           return sum + 1
         }
         count = count + 1
         sum += 1
         let check = palindromeChainLength(num + changeReversedBackToInt) + count
         return check
     }
    return count
}



palindromeChainLength(87)

