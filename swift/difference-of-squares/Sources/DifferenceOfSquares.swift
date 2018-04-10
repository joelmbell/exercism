//Solution goes in Sources

import Foundation

extension Sequence where Element: Numeric {
    func sum() -> Element {
        return reduce(0, +)
    }

    func square() -> [Element] {
        return map { $0 * $0 }
    }
}

class Squares {

    let inputRange: CountableClosedRange<UInt>

    init(_ num: UInt) {
        inputRange = 0...num
    }

    var squareOfSums: Int {
        let sum = inputRange.sum()
        return Int(sum * sum)
    }

    var sumOfSquares: Int {
        return Int(inputRange.square().sum())
    }

    var differenceOfSquares: Int {
        return squareOfSums - sumOfSquares
    }
}
