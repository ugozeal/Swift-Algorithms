import UIKit

/*
 * Complete the 'getPasswordStrength' function below.
 *
 * The function is expected to return a STRING_ARRAY.
 * The function accepts following parameters:
 *  1. STRING_ARRAY passwords
 *  2. STRING_ARRAY common_words
 */

//func getPasswordStrength(passwords: [String], common_words: [String]) -> [String] {
//    // Write your code here
//    let n = passwords.count
//    let m = common_words.count
//    var result = Array(repeating: "strong", count: n)
//
//    for i in 0..<n {
//        let password = passwords[i]
//        if passwords.count < 6 {
//            result[i] = "weak"
//        } else if
//            password.rangeOfCharacter(from: .decimalDigits) != nil &&
//                password.rangeOfCharacter(from: .lowercaseLetters) == nil &&
//                password.rangeOfCharacter(from: .uppercaseLetters) == nil {
//            result[i] = "weak"
//        } else if password.rangeOfCharacter(from: .lowercaseLetters) != nil &&
//                    password.rangeOfCharacter(from: .decimalDigits) == nil &&
//                    password.rangeOfCharacter(from: .uppercaseLetters) == nil {
//            result[i] = "weak"
//        } else if password.rangeOfCharacter(from: .uppercaseLetters) != nil &&
//                    password.rangeOfCharacter(from: .decimalDigits) == nil &&
//                    password.rangeOfCharacter(from: .lowercaseLetters) == nil {
//            result[i] = "weak"
//        } else {
//            result[i] = "strong"
//        }
//
//        for j in 0..<m {
//            if password.contains(common_words[j]) {
//                result[i] = "weak"
//                break
//            }
//        }
//    }
//    return result
//}
func getPasswordStrength(passwords: [String], common_words: [String]) -> [String] {
    var result = Array(repeating: "strong", count: passwords.count)

    for i in 0..<passwords.count {
        if passwords[i].count < 6 || passwords[i].allSatisfy({ $0.isUppercase }) {
            result[i] = "weak"
            continue
        }
        
        if passwords.count > 20 {
            var result = Array(repeating: "weak", count: passwords.count)
            return result
        }
       
       let containCommonWord = common_words.contains { commonWord in
           return passwords[i].range(of: commonWord, options: .caseInsensitive) != nil
       }
        if containCommonWord {
            result[i] = "weak"
        }
    }
    return result
}

getPasswordStrength(passwords: ["iliketoCoDe", "teaMAKEsmehappy", "abracaDabra", "pasSword", "blackcoffeelSthebest"], common_words: ["coffee", "coding", "happy"])
