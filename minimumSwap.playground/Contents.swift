import UIKit


func minimumSwaps(_ ratings: Array<Int>) -> Int {
  var noOfSwap = 0
    var arrayNegativeValue = [(Int, Int)]()
    var ratingDictionary = [Int: Bool]()

    for (index, number) in ratings.enumerated() {
        arrayNegativeValue.append((index, number))
        ratingDictionary[index] = false
    }
    arrayNegativeValue = arrayNegativeValue.sorted{ $0.1 > $1.1 }
    print(arrayNegativeValue)


    for i in 0..<ratings.count {
        var noOfCircle = 0
        var ratingIndex = i

        while !ratingDictionary[ratingIndex]! {
            ratingDictionary[ratingIndex] = true
            ratingIndex = arrayNegativeValue[ratingIndex].0
            noOfCircle += 1
        }

        if noOfCircle > 1 {
            noOfSwap += noOfCircle - 1
        }
    }

    return noOfSwap
}


minimumSwaps([4,3,1,2, 1,4])
minimumSwaps([3,1,2,4])
