//Solution goes in Sources

struct GradeSchool {

    private var store: [Int: [String]] = [:]

    mutating func addStudent(_ name: String, grade: Int) {
        var current = store[grade] ?? []
        current.append(name)
        store[grade] = current
    }

    var roster: [Int: [String]] {
        return store
    }

    var sortedRoster: [Int: [String]] {
        var sorted: [Int: [String]] = [:]
        for grade in store {
            sorted[grade.key] = grade.value.sorted()
        }
        return sorted
    }

    func studentsInGrade(_ grade: Int) -> [String] {
        return store[grade] ?? []
    }
}
