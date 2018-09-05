//Solution goes in Sources

import Foundation

struct Grains {

    enum GrainsError: Error {
        case inputTooLow(_ msg: String)
        case inputTooHigh(_ msg: String)
    }

    static var total: Float {
        return total(upTo: 64)
    }

    static func square(_ input: Int) throws -> Float {

        let errMsg = "Input[\(input)] invalid. Input should be between 1 and 64 (inclusive)"

        guard input > 0 else {
            throw GrainsError.inputTooLow(errMsg)
        }

        guard input < 65 else {
            throw GrainsError.inputTooHigh(errMsg)
        }

        return powf(2, Float(input - 1))
    }

    static func total(upTo: Int) -> Float {
        if upTo == 0 {
            return 0
        }
        return try! square(upTo) + total(upTo: upTo - 1)
    }
}
