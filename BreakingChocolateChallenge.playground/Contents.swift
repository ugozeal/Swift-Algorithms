import UIKit


func breakChocolate(_ n: Int,_ m: Int) -> Int {
    if n != 0 && m != 0 {
        return (n * m) - 1
    } else {
        return 0
    }
//    return n != 0 && m != 0 ? (n * m) - 1 : 0
}

breakChocolate(5, 5)
