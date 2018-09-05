//Solution goes in Sources

import Foundation

struct Grains {

    enum GrainsError: Error {
        case inputTooLow(_ msg: String)
        case inputTooHigh(_ msg: String)
        init?(_ value: Int) {
            let msg = "Input[\(value)] invalid. Input should be between 1 and 64 (inclusive)"

            if value > 64 {
                self = .inputTooHigh(msg)
            } else if value < 1 {
                self = .inputTooLow(msg)
            } else {
                return nil
            }
        }
    }

    static func square(_ input: Int) throws -> Float {
        if let error = GrainsError(input) {
            throw error
        }

        return Float(1 << UInt(input-1))
    }

    static var total: Float {
        return total(upTo: 64)
    }

    static func total(upTo: Int) -> Float {
        if upTo == 0 {
            return 0
        }
        return try! square(upTo) + total(upTo: upTo - 1)
    }
}
