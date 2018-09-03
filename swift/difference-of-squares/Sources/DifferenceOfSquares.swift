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

    let inputRange: CountableClosedRange<Int>

    init(_ num: Int) {
        let num = num > 0 ? num : 0
        inputRange = 0...num
    }

    lazy var squareOfSums: Int = {
        return self.inputRange.sum().square()
    }()

    lazy var sumOfSquares: Int = {
        return self.inputRange.squareEach().sum()
    }()

    var differenceOfSquares: Int {
        return squareOfSums - sumOfSquares
    }
}
