//Solution goes in Sources

extension Sequence {
    func compare<Y: Sequence, Z>(to rhs: Y, with closure: ((Self.Element, Y.Element) -> Z)) -> [Z] {
        return Swift.zip(self, rhs).map(closure)
    }
}

extension Sequence where Element: Numeric {
    func sum() -> Element {
        return self.reduce(0, +)
    }
}

struct Hamming {

    let lhs: String
    let rhs: String

    init?(lhs: String, rhs: String) {
        guard lhs.count == rhs.count else {
            return nil
        }
        self.lhs = lhs
        self.rhs = rhs
    }

    var distance: Int {
        return lhs
            .compare(to: rhs) { $0 == $1 ? 0 : 1 }
            .sum()
    }
}

extension Hamming {
    static func compute(_ lhs: String, against rhs: String) -> Int? {
        return Hamming(lhs: lhs, rhs: rhs)?.distance
    }
}
