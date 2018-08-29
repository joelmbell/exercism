//Solution goes in Sources

extension Sequence {
    func accumulate(_ accumulator: (Element) -> Element) -> [Self.Element] {

        // Why Can't I just use map??
//        return self.map { accumulator($0) }

        var result: [Self.Element] = []
        for item in self {
            result.append(accumulator(item))
        }
        return result
    }

    func accumulate(_ accumulator: (Element) -> [Element]) -> [[Self.Element]] {

        // Why Can't I just use map??
//        return self.map { accumulator($0) }

        var result: [[Self.Element]] = []
        for item in self {
            result.append(accumulator(item))
        }
        return result
    }
}
