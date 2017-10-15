//Solution goes in Sources

class Year {
    private let year: Int

    var isLeapYear: Bool {
        if year % 400 == 0 { return true }
        if year % 100 == 0 { return false }
        return year % 4 == 0
    }

    init(calendarYear: Int) {
        year = calendarYear
    }

    fileprivate func isEvery4thCentry(_ year: Int) -> Bool {
        return year % 400 == 0
    }

    fileprivate func isEvery

}
