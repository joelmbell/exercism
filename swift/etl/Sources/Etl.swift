//Solution goes in Sources

struct ETL {
    static func transform(_ data: [Int: [String]]) -> [String: Int] {
        return data.reduce([:]) { (acc, value) -> [String: Int] in
            var acc = acc
            for letter in value.value {
                acc[letter.lowercased()] = value.key
            }
            return acc
        }
    }
}
