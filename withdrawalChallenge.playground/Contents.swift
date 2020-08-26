import UIKit

func withdraw(_ n: Int) -> [Int] {
  //coding and coding..
    var count100 = 0; var count50 = 0; var count20 = 0
    var newN = n
    var emptyArray = [Int]()
    while newN > 0 {
        switch newN{
        case newN % 100: newN = newN - 100; count100 += 1
        case newN % 50:newN = newN - 50;count50 += 1
        case newN % 20:newN = newN - 20;count20 += 1
        default:newN = newN - 20;count20 += 1
        }
        
//        if newN % 100 == 0 {
//            newN = newN - 100
//            count100 += 1
//             continue
//
//       }else if newN % 50 == 0 {
//            newN = newN - 50
//            count50 += 1
//             continue
//        }
//        else if newN % 20 == 0{
//            newN = newN - 20
//            count20 += 1
//
//        }else {
//            newN = newN - 20
//            count20 += 1
//        }
       
        
    }
//    emptyArray.append(count100)
//    emptyArray.append(count50)
//    emptyArray.append(count20)
    emptyArray += [count100, count50, count20]
  
  return emptyArray
}


withdraw(110)
