import Foundation

public enum MinimumCoinChangeError: Error {
    case noRestPossibleForTheGivenValue
}

public struct MinimumCoinChange {
    internal let sortedCoinSet: [Int]

    public init(coinSet: [Int]) {
        self.sortedCoinSet = coinSet.sorted(by: { $0 > $1})
    }

    //Greedy Algorithm
    public func changeGreedy(_ value: Int) throws -> [Int] {
        guard value > 0 else { return [] }

        var change: [Int] = []
        var newValue = value

        for coin in sortedCoinSet {
            while newValue - coin >= 0 {
                change.append(coin)
                newValue -= coin
            }

            if newValue == 0 {
                break
            }
        }

        if newValue > 0 {
            throw MinimumCoinChangeError.noRestPossibleForTheGivenValue
        }

        return change
    }
}
