import UIKit

func numberDivide(_ num1: Int, _ num2: Int) -> [Int]{
    let hold = num1 / num2
    var array = [Int]()
    var count = 0
    if num1 % num2 == 0{
        while array.count < num2 {
            array.append(hold)
        }
    } else {
        if num1 % num2 != 0 {
            while array.count < num2 {
                array.append(hold)
                count = array.reduce(0,+)
            }
        }
        let holdcount = num1 - count
        for i in 0..<holdcount{
            array[i]+=1
        }
    }
    
    //print(count)
    return array.sorted()
}


numberDivide(20, 6)
