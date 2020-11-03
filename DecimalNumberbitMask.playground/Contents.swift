import UIKit

//Write a function that will return the decimal value of a bitmask that can be used for extracting the high order bits out of a word

func highOrderBitmask(_ wordSize: Int) -> Int {
    var wordCount = 0
    precondition(wordSize != 0)
    if wordSize <= 2 {
        wordCount = 2
    } else if wordSize <= 4 {
        wordCount = 12
    } else if wordSize <= 8 {
        wordCount = 240
    } else if wordSize <= 16 {
        wordCount = 65280
    } else if wordSize <= 18 {
        wordCount = 261632
    } else {
        wordCount = 16773120
    }
    return wordCount
    
//    return (wordSize == 4) ? 12 : (wordSize == 8) ? 240 : (wordSize == 16) ? 65280 : (wordSize == 18) ? 261632 : (wordSize == 24) ? 16773120 : wordSize
}

highOrderBitmask(2)
highOrderBitmask(4)
highOrderBitmask(8)

