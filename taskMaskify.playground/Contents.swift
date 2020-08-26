import UIKit

func maskify(_ cc: String) -> String {
    var subString = ""
    subString = String(cc.suffix(4))
  if cc == "" {
  return ""
}else if cc.count < 4{
  return cc
  }else{

    }
    while subString.count <= cc.count {
       
        subString = "#" + subString
   }
  print(subString)
    return subString
    
}
maskify("lllllllhrhoihiuoiunuj")


