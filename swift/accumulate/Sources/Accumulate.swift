//Solution goes in Sources

extension Sequence {
    func accumulate<T>(_ accumulator: (Element) -> T) -> [T] {
        var result: [T] = []
        for item in self {
            result.append(accumulator(item))
        }
        return result
    }
}
