import UIKit

func orderWeight(_ str: String) -> String {
    let strNum = str.components(separatedBy: " ")
    var hold: [Int] = []
    for items in strNum {
        var sum = 0
        for characters in items {
            sum += Int(String(characters))!
        }
        hold.append(sum)
    }
    let joinArray = zip(hold, strNum).sorted{$1 > $0}
    let sorted = joinArray.map {$0.1}
    return sorted.joined(separator: " ")
}

print(orderWeight("56 65 74 100 99 68 86 180 90"))

