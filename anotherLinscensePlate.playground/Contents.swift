import UIKit

func similarLicensePlates(_ plate1: String,_ plate2: String) -> Bool {
    var firstPlate = ""
    var secondPlate = ""
    
    for item in plate1 {
        switch item {
        case "8" :
            let item = "B" ; firstPlate.append(item)
        case "B" :
            let item = "B" ; firstPlate.append(item)
        case "5" :
            let item = "S" ; firstPlate.append(item)
        case "S" :
            let item = "S" ; firstPlate.append(item)
        case "2" :
            let item = "Z" ; firstPlate.append(item)
        case "Z" :
            let item = "Z" ; firstPlate.append(item)
        case "1" :
            let item = "I" ; firstPlate.append(item)
        case "I" :
            let item = "I" ; firstPlate.append(item)
        case "T" :
            let item = "I" ; firstPlate.append(item)
        case "Q" :
            let item = "0" ; firstPlate.append(item)
        default:
            let item = "0" ; firstPlate.append(item)
        }
        
    }
    for item in plate2 {
        switch item {
        case "8" :
            let item = "B" ; secondPlate.append(item)
        case "B" :
            let item = "B" ; secondPlate.append(item)
        case "5" :
            let item = "S" ; secondPlate.append(item)
        case "S" :
            let item = "S" ; secondPlate.append(item)
        case "2" :
            let item = "Z" ; secondPlate.append(item)
        case "Z" :
            let item = "Z" ; secondPlate.append(item)
        case "1" :
            let item = "I" ; secondPlate.append(item)
        case "I" :
            let item = "I" ; secondPlate.append(item)
        case "T" :
            let item = "I" ; secondPlate.append(item)
        case "Q" :
            let item = "0" ; secondPlate.append(item)
        default:
            let item = "0" ; secondPlate.append(item)
        }
        
    }
    if firstPlate == secondPlate{
            return true
        }else{
            return false
        }

   }


similarLicensePlates("8Q","BO")










//func similarLicensePlates(_ plate1: String,_ plate2: String) -> Bool {
//
//    var plate11 = ""
//    var plate22 = ""
//
//    for item in plate1 {
//        if item == "0" || item == "O" || item == "Q" {
//            let item = "0"
//            plate11.append(item)
//            print(item)
//        }else if item == "1" || item == "I" || item == "T"{
//            let item = "T"
//            plate11.append(item)
//            print(item)
//        }else if item == "2" || item == "Z" {
//            let item = "Z"
//            plate11.append(item)
//            print(item)
//        }else if item == "5" || item == "S" {
//            let item = "S"
//            plate11.append(item)
//            print(item)
//        }else if item == "8" || item == "B" {
//            let item = "B"
//            plate11.append(item)
//            print(item)
//        }
//
//    }
//    for item in plate2 {
//          if item == "0" || item == "O" || item == "Q" {
//              let item = "0"
//            plate22.append(item)
//          }else if item == "1" || item == "I" || item == "T"{
//              let item = "T"
//            plate22.append(item)
//          }else if item == "2" || item == "Z" {
//              let item = "Z"
//            plate22.append(item)
//          }else if item == "5" || item == "S" {
//              let item = "S"
//            plate22.append(item)
//          }else if item == "8" || item == "B" {
//              let item = "B"
//            plate22.append(item)
//              print(item)
//          }
//      }
//    if plate11 == plate22{
//        return true
//    }else{
//        return false
//    }
//    return true
//
//}


