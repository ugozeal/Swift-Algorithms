import UIKit

func isTriangle(_ a: Int,_ b: Int,_ c: Int) -> Bool {
    //return (a + b) > c && (a + c) > b && (b + c) > a
  
    if a + b > c && a + c > b && b + c > a {
        return true
    } else{
        return false
    }
  
}

isTriangle(4, 2, 3)

