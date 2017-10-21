//Solution goes in Sources

extension Sequence where Element: Numeric {
    func sum() -> Element {
        return reduce(0, +)
    }
}

fileprivate func multiples(to limit: Int, for base: Int) -> [Int] {
    guard base != 0, base < limit else { return [] }
    return (base..<limit).filter { $0 % base == 0 }
}

fileprivate func uniqueMultiples(to limit: Int, for bases: [Int]) -> Set<Int> {
    let allValues = bases.flatMap { multiples(to: limit, for: $0) }
    return Set(allValues) // Remove Duplicates
}

class SumOfMultiples {
    static func toLimit(_ limit: Int, inMultiples multiples: [Int]) -> Int {
        return uniqueMultiples(to: limit, for: multiples).sum()
    }
}
