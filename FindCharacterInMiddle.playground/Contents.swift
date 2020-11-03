import UIKit

func getMiddle(_ str: String) -> String {
//  precondition(0 < str && str < 1000)
    let strCount = str.count
    if strCount < 2 {
        return str
    }
    let startIndex = str.index(str.startIndex, offsetBy: (strCount - 1)/2)
    let endIndex = str.index(str.startIndex, offsetBy: (strCount + 2)/2)
    return String(str[startIndex..<endIndex])
    
//    if str.isEmpty { return "" }
//    let len = str.count
//    let fromIdx = str.index(str.startIndex, offsetBy: (len - 1)/2)
//    let toIdx = str.index(str.startIndex, offsetBy: len/2)
//    return String(str[fromIdx...toIdx])
}

getMiddle("testing")
