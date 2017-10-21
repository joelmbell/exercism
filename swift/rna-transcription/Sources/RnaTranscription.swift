//Solution goes in Sources

class Nucleotide {

    enum Err: Error {
        case invalid
    }

    let input: String
    init(_ value: String) {
        input = value
    }

    func transcribe(_ from: Character) throws -> Character {
        switch from {
        case "C": return "G"
        case "G": return "C"
        case "T": return "A"
        case "A": return "U"
        default: throw Err.invalid
        }
    }

    func complementOfDNA() throws -> String {
        let chars = try input.map { try transcribe($0) }
        return String(chars)
    }
}
