//Solution goes in Sources

import Foundation

struct Bob {
    static func hey(_ input: String) -> String {
        if input.uppercased() == input && (input.rangeOfCharacter(from: .uppercaseLetters) != nil) {
            return "Whoa, chill out!"
        } else if input.trimmingCharacters(in: .whitespaces) == "" {
            return "Fine. Be that way!"
        } else if input.last == "?" {
            return "Sure."
        } else {
            return "Whatever."
        }
    }
}
