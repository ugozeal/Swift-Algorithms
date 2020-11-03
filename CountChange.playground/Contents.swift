import UIKit

func countChange(_ money: Int,_ coins: Array<Int>) -> Int {

    
    func recurs(_ money: Int,_ coins: Array<Int>,_ count: Int) -> Int {
        if (money < 0 || coins.isEmpty ) {
            return 0
        }else if (money == 0 ) {
            return 1
        } else {
            return recurs(money, Array(coins.dropFirst()), count) + recurs(money - coins[0], coins, count)
        }
    }
    return recurs(money, coins, 0)
    
//    func loop(_ money: Int,_ coins: Array<Int>) -> Int {
//        if (money < 0 || coins.isEmpty ) {
//            return 0
//        }else if (money == 0 ) {
//            return 1
//        } else {
//            return loop(money, Array(coins.dropFirst())) + loop(money - coins[0], coins)
//        }
//    }
//    return loop(money, coins)
}

countChange(10, [5,2,3])
