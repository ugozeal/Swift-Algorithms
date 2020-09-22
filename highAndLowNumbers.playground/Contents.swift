import UIKit

func highAndLow(_ numbers: String) -> String {
    var result = ""
    let max: Int32
    let min: Int32
    let number = numbers.split(separator: " ")
    print(number)
    var array2 = [Int32]()
    number.map { (num)in
        array2.append(Int32(num) ?? 0)
    }
//    for num in number{
//        array2.append(Int32(num) ?? 0)
//    }
    max = array2.max() ?? 0
    min = array2.min() ?? 0
    result = "\(max) \(min)"
    return result
}

highAndLow("1 9 3 4 -5")
