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
        var currentIndex = lhs.startIndex
        var count = 0
        while currentIndex != lhs.endIndex {
            if lhs[currentIndex] != rhs[currentIndex] {
                count += 1
            }
            currentIndex = lhs.index(after: currentIndex)
        }
        return count
    }
}

extension Hamming {
    static func compute(_ lhs: String, against rhs: String) -> Int? {
        rieturn Hamming(lhs: lhs, rhs: rhs)?.distance
    }
}
