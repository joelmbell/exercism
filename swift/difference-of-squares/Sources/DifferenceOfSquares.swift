//Solution goes in Sources

import Foundation

extension Numeric {
    func square() -> Self {
        return self * self
    }
}

extension Sequence where Element: Numeric {
    func sum() -> Element {
        return reduce(0, +)
    }

    func squareEach() -> [Element] {
        return map { $0.square() }
    }
}

class Squares {

    let inputRange: CountableClosedRange<UInt>

    init(_ num: UInt) {
        inputRange = 0...num
    }

    var squareOfSums: UInt {
        return inputRange.sum().square()
    }

    var sumOfSquares: UInt {
        return inputRange.squareEach().sum()
    }

    var differenceOfSquares: UInt {
        return squareOfSums - sumOfSquares
    }
}
