//Solution goes in Sources

extension Sequence where Element: Numeric {
    func sum() -> Element {
        return reduce(0, +)
    }

    func square() -> [Element] {
        return map { $0 * $0 }
    }
}

class Squares {

    let inputRange: CountableClosedRange<Int>

    init(_ num: Int) {
        inputRange = 1...num
    }

    var squareOfSums: Int {
        let sum = inputRange.sum()
        return sum * sum
    }

    var sumOfSquares: Int {
        let squares = inputRange.square()
        return squares.sum()
    }

    var differenceOfSquares: Int {
        return squareOfSums - sumOfSquares
    }
}
