//Solution goes in Sources

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
        return lhs.enumerated().reduce(0) { (acc, item) -> Int in
            let index = String.Index(encodedOffset: item.offset)
            var result = acc
            if rhs[index] != item.element {
                result += 1
            }
            return result
        }
    }
}

extension Hamming {
    static func compute(_ lhs: String, against rhs: String) -> Int? {
        return Hamming(lhs: lhs, rhs: rhs)?.distance
    }
}
