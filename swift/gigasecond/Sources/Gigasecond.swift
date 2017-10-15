//Solution goes in Sources

import Foundation

fileprivate let secondsPerGigasecond: TimeInterval = 1_000_000_000

class Gigasecond: CustomStringConvertible {

    let fromDate: Date

    init?(from dateString: String) {
        guard let date = dateFormatter.date(from: dateString) else {
            return nil
        }
        fromDate = date
    }

    var description: String {
        let toDate = fromDate.addingTimeInterval(secondsPerGigasecond)
        return dateFormatter.string(from: toDate)
    }

    private var dateFormatter: DateFormatter = {
        let df = DateFormatter()
        df.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        df.timeZone = TimeZone(secondsFromGMT: 0)
        return df
    }()
}
