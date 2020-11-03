import UIKit

func splitInteger(_ num: Int,_ parts: Int) -> Array<Int> {
  
    let initialSplit = num / parts
    var splitArray = [Int]()
    var Sum = 0
    if num % parts == 0{
        while splitArray.count < parts {
            splitArray.append(initialSplit)
        }
    } else {
        if num % parts > 0 {
            repeat{
                splitArray.append(initialSplit)
                Sum = splitArray.reduce(0,+)
            }while splitArray.count < parts
            
            
        }
        let holdcount = num -  Sum
        //var i = 0
//        while i < holdcount{
//            splitArray[i]+=1
//            i += 1
//        }
        for i in 0..<holdcount{
            splitArray[i]+=1
        }
        
    }
    return splitArray.sorted()
}

splitInteger(11, 3)
