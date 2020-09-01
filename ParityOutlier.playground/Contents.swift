import UIKit

func findOutlier(_ array: [Int]) -> Int {
    var evenNum = [Int]()
    var oddNum = [Int]()
    for num in array{
        if num % 2 == 0 {
            evenNum.append(num)
        }
        if num % 2 != 0 {
            oddNum.append(num)
        }
    }
    if evenNum.count == 1{
        print(evenNum[0])
    }else if oddNum.count == 1{
        print(oddNum[0])
    }

    return 0
}




findOutlier([2,4,0,4,11,2602,36])
