//Solution goes in Sources

extension Sequence where Element: Numeric {
    func sum() -> Element {
        return reduce(0, +)
    }
}

fileprivate func multiples(to limit: Int, for base: Int) -> [Int] {
    guard base < limit, base != 0 else {
        return [0]
    }
    var temp = base
    var output: [Int] = []
    while temp < limit {
        output.append(temp)
        temp += base
    }
    return output
}

fileprivate func uniqueMultiples(to limit: Int, for bases: [Int]) -> Set<Int> {
    let values = bases.map { multiples(to: limit, for: $0) }
    let flattened = values.flatMap { $0 }
    return Set(flattened)
}

class SumOfMultiples {
    static func toLimit(_ limit: Int, inMultiples multiples: [Int]) -> Int {
        return uniqueMultiples(to: limit, for: multiples).sum()
    }
}
