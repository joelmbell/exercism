//Solution goes in Sources

struct DNA {

    static private let validChars: [Character] = ["T", "A", "G", "C"]

    let strand: String

    init?(strand: String) {
        let result = strand.filter { DNA.validChars.contains($0) }
        if result.isEmpty && strand != "" {
            return nil
        }
        self.strand = strand
    }

    func counts() -> [String: Int] {
        var output: [String: Int] = ["T": 0, "A": 0, "G": 0, "C": 0]
        _ = strand.reduce(strand) { (acc, char) -> String in
            guard acc != "" else { return "" }
            let (newString, countRemoved) = remove(char: char, from: acc)
            output[String(char)] = countRemoved
            return newString
        }
        return output
    }

    func count(_ item: Character) -> Int {
        return remove(char: item, from: strand).count
    }

    private func remove(char: Character, from string: String) -> (string: String, count: Int) {
        let newValue = string.filter { $0 != char }
        let countRemoved = string.count - newValue.count
        return (String(newValue), countRemoved)
    }
}
