import UIKit

func isIsogram(_ str: String) -> Bool {
    let sampleStr = str.lowercased()
    let newStr = Set(sampleStr)
    
    if str.count == newStr.count{
        return true
    } else{
        return false
    }
}

//func isIsogram(_ str: String) -> Bool {
//    let sampleStr = str.lowercased()
//    let newStr = Set(sampleStr)
//
//    return str.count == newStr.count ? true : false
//}
isIsogram("Dermatoglyphics")
