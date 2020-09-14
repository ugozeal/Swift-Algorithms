import UIKit

//func toCardinal(num: Int)-> String {
//    //let ones = num % 10;
//    let tens = num % 10;
//
////    if value of tens falls between 11 and 13
//    if (tens < 11 || tens > 13) {
//        switch tens {
//            case 1:return "\(num)st"
//            case 2:return "\(num)nd"
//            case 3:return "\(num)rd"
//            default:break
//        }
////        if tens == 1{
////            return "\(num)st"
////        } else if tens == 2{
////           return "\(num)nd"
////        }else if tens == 3{
////            return "\(num)rd"
////        }
//    }
//
//print("\(num)th")
//    return "\(num)th"
//
//}
//
//toCardinal(num: 21)

func numberToOrdinal(_ number: Int) -> String {
  
  //Storing the modulus of the number in a variable
  
    let tens = number % 100
    let ones = number % 10
    switch tens{
        case 11: return "\(number)th"
        case 13: return "\(number)th"
        case 12: return "\(number)th"
        default: break
    }
//      if (11...13).contains(tens) {
//          return "\(number)th"
//      }
      switch ones {
          case 1: return "\(number)st"
          case 2: return "\(number)nd"
          case 3: return "\(number)rd"
          default: return "\(number)th"
      }
    
}

numberToOrdinal(112)
