import UIKit

func Stringy(_ size: Int) -> String {
    var answer = ""
    while answer.count < size{
        answer += "10"
    }
    return answer
}

Stringy(6)
