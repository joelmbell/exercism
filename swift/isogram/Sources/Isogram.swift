//Solution goes in Sources

struct Isogram {

    static let ignore: [Character] = [" ", "-"]

    static func isIsogram(_ string: String) -> Bool {
        let string = string.lowercased()
        var map: [Character: Int] = [:]
        for char in string {

            if ignore.contains(char) {
                continue
            }

            let current = map[char] ?? 0
            if current > 0 {
                return false
            }

            map[char] = current + 1
        }

        return true
    }
}
