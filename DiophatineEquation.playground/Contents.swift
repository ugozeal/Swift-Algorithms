import UIKit

//def sol_equa(n):
//    """
//    x - 2y = first_num
//    x + 2y = second_num
//    """
//
//    result = []
//
//    for i in range(1, int(math.sqrt(n)) + 1):
//        if n % i != 0:
//            continue
//
//        j = n / i
//        y = (j - i) / 4
//        x = i + 2 * y
//
//        if x >= 0 and y >= 0 and (j == x + 2 * y) and (i == x - 2 * y):
//            result.append([x, y])
//
//    return sorted(result, reverse=True)

func solequa(_ n: Int) -> [(Int, Int)] {
    """
    x - 2y = first_num
    x + 2y = second_num
    """
    var result = [(Int, Int)]()
    for i in 1...(Int(sqrt(Double(n)))){
        if n % i != 0{
            continue
        }
        let j = n / i
        let y = (j - i) / 4
        let x = i + 2 * y
        if x >= 0 && y >= 0 && (j == x + 2 * y) && (i == x - 2 * y){
            result.append((x, y))
        }
    }
    return result
}

solequa(90005)

//func solequa(_ n: Int) -> [(Int, Int)] {
//    var result: [(Int, Int)] = []
//    let cap = Int(sqrt(Double(n)))
//    for k in 1...cap {
//      if n % k != 0 {
//        continue
//      }
//      let a = k + n / k
//      let b = n / k - k
//      if (a % 2) == 0 && (b % 4) == 0 {
//        result.append((a / 2, b / 4))
//      }
//    }
//    return result
//}
func factorization(n: Int) -> [Int] {

    var res = [1]
    var n = n
    var tmp = 2
    repeat {
        if n % tmp == 0 {
            res.append(tmp)
            n = n / tmp
        } else {
            tmp += 1
        }
    } while n > 1
    return res
}

func combinations(factors: [Int]) -> [(Int, Int)] {

    let arrayLength =   Int(pow(Double(2),Double(factors.count - 1))) - 1
    let patterns = (1...arrayLength).map {  String(format: "%0\(factors.count)d",  Int(String($0, radix: 2))!) }
    return patterns
        .map { (p) -> (Int, Int) in
            let (a, b) = zip(factors, p).reduce((1, 1)) { (accum, arg1) -> (Int, Int) in
                let (factor, char) = arg1
                return char == "0" ? (accum.0 * factor, accum.1) : (accum.0, accum.1 * factor)
            }

            return (min(a, b), max(a,b))
    }
    .sorted { $0.1 > $1.1  }
    .reduce([]) { (accum, arg1) -> [(Int, Int)] in
        let (a, b) = arg1
        var accum = accum
        if let last = accum.last {
            if last.0 != a && last.1 != b {
                accum.append(arg1)
            }
        }
        else {
            accum.append(arg1)
        }
        return accum
    }
}

//func solequa(_ n: Int) -> [(Int, Int)] {
//    let factors = factorization(n: n)
//    let pairs = combinations(factors: factors)
//    return pairs.compactMap {  (($0.0 + $0.1) % 2 == 0)  && (($0.1 - $0.0) % 4 == 0) ? (($0.0 + $0.1) / 2, (($0.1 - $0.0) / 4 )) : nil }
//}

//func helperFunction( n: Int) -> [Int]{
//
//
//}
//
//
//
//
//func factors(of n: Int) -> [Int] {
//    precondition(n > 0, "n must be positive")
//    let sqrtn = Int(Double(n).squareRoot())
//    var factors: [Int] = []
//    factors.reserveCapacity(2 * sqrtn)
//    for i in 1...sqrtn {
//        if n % i == 0 {
//            factors.append(i)
//        }
//    }
//    var j = factors.count - 1
//    if factors[j] * factors[j] == n {
//        j -= 1
//    }
//    while j >= 0 {
//        factors.append(n / factors[j])
//        j -= 1
//    }
//    return factors
//}
//
//func solequa(_ n: Int) -> [(Int, Int)] {
//    var result = [(Int, Int)]()
//    let list = factors(of: n)
//   for i1 in list {
//        let nD = Double(n)
//        let i: Double = Double(i1)
//        let x = (i*i + nD)/(2*i)
//        if floor(x) != x || x <= 0 {
//            continue
//        }
//        let y = (x - i)/2
//        if floor(y) != y || y < 0 {
//            continue
//        }
//        result.append((Int(x), Int(y)))
//    }
//    return result
//}
//
//solequa(90005)
