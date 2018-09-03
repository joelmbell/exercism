//Solution goes in Sources

struct Raindrops {

    let value: Int

    init(_ value: Int) {
        self.value = value
    }

    var sounds: String {

        var output: String = ""

        if value % 3 == 0 {
            output.append("Pling")
        }

        if value % 5 == 0 {
            output.append("Plang")
        }

        if value % 7 == 0 {
            output.append("Plong")
        }

        if output == "" {
            output.append("\(value)")
        }

        return output
    }
}
