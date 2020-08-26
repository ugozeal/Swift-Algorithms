import UIKit

func diamond(_ size: Int) -> String? {
  if size == 1 {
    let hash = "*"
    return "\(hash)\n"
  }
    
    if size % 2 == 0 || size < 0{
        return nil
    }
    var i = 1
    var newArr = [Int]()
    var revArr = [Int]()
    
    while i <= size {
        if i % 2 != 0 {
            newArr.append(i)
        }
        i += 1
    }
    
   for number in newArr.reversed() {
    revArr.append(number)
    }
    
    var k = 0
    let popLast = newArr[0...newArr.count - 2]
    let total = popLast + revArr
    
    var final = ""
    
    while k < total.count {
        let str = String(repeating: "*", count: total[k])
        let before = " "
        let newSize = (size - total[k]) / 2
        let repeatSpace = String(repeating: before, count: newSize)
        
        final += "\(repeatSpace)\(str)\n"
        k = k + 1
       }
  return final
    
}

diamond(5)

