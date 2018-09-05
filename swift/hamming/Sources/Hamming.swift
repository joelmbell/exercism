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
        var count: Int = 0
        for i in 0..<lhs.count {
            let index = String.Index(encodedOffset: i)
            if lhs[index] != rhs[index] {
                count += 1
            }
        }
        return count
    }
}

extension Hamming {
    static func compute(_ lhs: String, against rhs: String) -> Int? {
        return Hamming(lhs: lhs, rhs: rhs)?.distance
    }
}
