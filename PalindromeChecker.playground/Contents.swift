import UIKit

/*
* complete the palindromechecker Function below.
* The function is expected to return a STRING.
* The function accepts following parameters:
* 1. STRING s
* 2. INTEGER_ARRAY startIndex
* 3. INTEGER_ARRAY endIndex
* 4. INTEGER_ARRAY subs
*/

func palindromeChecker(s: String, startIndex: [Int], endIndex: [Int], subs: [Int]) -> String {
    // Write your code here
    func cantSet(value: Int) -> Int {
        return String(value, radix: 2).filter({ $0 == "1"}).count
    }
    let offeset = Character("a").asciiValue!
    var answerString = ""
    var strPar = [Int]()
    var bitParity = 0
    strPar.append(bitParity)
    
    for char in s {
        let charIdx = Int(char.asciiValue!) - Int(offeset)
        bitParity = (bitParity ^ (1 << charIdx))
        strPar.append(bitParity)
    }
    
    let q = startIndex.count
    
    for i in 0..<q {
        let c1 = strPar[startIndex[i]]
        let c2 = strPar[endIndex[i] + 1]
        
        let diff = (c1 ^ c2)
        let oddCount = diff.nonzeroBitCount
        
        let result = (oddCount - subs[i] * 2) <= 1
        
        if result {
            answerString += "1"
        } else {
            answerString += "0"
        }
    }
    print(answerString)
    return answerString
}

palindromeChecker(s: "xxdnssuqevu", startIndex: [0], endIndex: [10], subs: [3])
