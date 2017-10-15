//Solution goes in Sources

class Nucleotide {

    enum Err: Error {
        case invalid
    }

    let input: String
    init(_ value: String) {
        input = value
    }

    private let compliments: [Character: Character] = [
        "C": "G",
        "G": "C",
        "T": "A",
        "A": "U"
    ]

    func complementOfDNA() throws -> String {
        let output = try input.map { (char) -> Character in
            guard let compliment = compliments[char] else {
                throw Err.invalid
             }
            return compliment
        }
        return String(output)
    }
}
