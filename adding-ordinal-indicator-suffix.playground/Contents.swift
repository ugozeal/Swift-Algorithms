import UIKit

func toCardinal(num: Int)-> String {
    //let ones = num % 10;
    let tens = num % 100;

//    if value of tens falls between 11 and 13
    if (tens < 11 || tens > 13) {
        switch tens {
            case 1:return "\(num)st"
            case 2:return "\(num)nd"
            case 3:return "\(num)rd"
            default:break
        }
//        if tens == 1{
//            return "\(num)st"
//        } else if tens == 2{
//           return "\(num)nd"
//        }else if tens == 3{
//            return "\(num)rd"
//        }
    }
    
//print("\(num)th")
    return "\(num)th"
    
}

toCardinal(num: 2)
