import UIKit





func roman(number: Int) -> String
{
    let decimals = [1000, 500, 100, 50, 10, 5, 1]
    let numerals = ["M", "D", "C", "L", "X", "V", "I"]

    var result = ""
    var number = number

    while number > 0
    {
        for (index, decimal) in decimals.enumerated()
        {
            if number - decimal >= 0 {
                number -= decimal
                result += numerals[index]
                break
            }
        }
    }

    return result
}


func fromRoman(roman: String) -> Int {
    let dictionaryOfValues = ["I": 1,"V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
    var result = 0
    var maxCountSoFar = 0
    for char in roman.uppercased().reversed() {
        let value = dictionaryOfValues[String(char)]
        if value ?? 0 >= maxCountSoFar {
            result += value ?? 0
            maxCountSoFar = value ?? 0
        } else {
            result -= value ?? 0
        }
    }
    return result
}

fromRoman(roman: "micd")
