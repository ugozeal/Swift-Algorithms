import UIKit

func similarLicensePlates(_ plate1: String,_ plate2: String) -> Bool {

    var plate11 = ""
    var plate22 = ""
    for item in plate1 {
        if item == "0" || item == "O" || item == "Q" {
            let item = "0"
            plate11.append(item)
            print(item)
        }else if item == "1" || item == "I" || item == "T"{
            let item = "T"
            plate11.append(item)
            print(item)
        }else if item == "2" || item == "Z" {
            let item = "Z"
            plate11.append(item)
            print(item)
        }else if item == "5" || item == "S" {
            let item = "S"
            plate11.append(item)
            print(item)
        }else if item == "8" || item == "B" {
            let item = "B"
            plate11.append(item)
            print(item)
        }

    }
    for item in plate2 {
          if item == "0" || item == "O" || item == "Q" {
              let item = "0"
            plate22.append(item)
          }else if item == "1" || item == "I" || item == "T"{
              let item = "T"
            plate22.append(item)
          }else if item == "2" || item == "Z" {
              let item = "Z"
            plate22.append(item)
          }else if item == "5" || item == "S" {
              let item = "S"
            plate22.append(item)
          }else if item == "8" || item == "B" {
              let item = "B"
            plate22.append(item)
              print(item)
          }
      }
    if plate11 == plate22{
        return true
    }else{
        return false
    }
   
}

