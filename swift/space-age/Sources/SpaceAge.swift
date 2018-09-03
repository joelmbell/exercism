//Solution goes in Sources

struct SpaceAge {

    enum Plant: Double {
        case earth = 1
        case mercury = 0.2408467
        case venus = 0.61519726
        case mars = 1.8808158
        case jupiter = 11.862615
        case saturn = 29.447498
        case uranus = 84.016846
        case neptune = 164.49132

        var earthYearSeconds: Double {
            return 31557600.0
        }

        var orbitalPeriod: Double {
            return earthYearSeconds * self.rawValue
        }

        func years(from seconds: Double) -> Double {
            return seconds / self.orbitalPeriod
        }
    }

    let seconds: Double

    init(_ seconds: Double) {
        self.seconds = seconds
    }

    var onEarth: Double {
        return Plant.earth.years(from: seconds)
    }

    var onMercury: Double {
        return Plant.mercury.years(from: seconds)
    }

    var onVenus: Double {
        return Plant.venus.years(from: seconds)
    }

    var onMars: Double {
        return Plant.mars.years(from: seconds)
    }

    var onJupiter: Double {
        return Plant.jupiter.years(from: seconds)
    }

    var onSaturn: Double {
        return Plant.saturn.years(from: seconds)
    }

    var onUranus: Double {
        return Plant.uranus.years(from: seconds)
    }

    var onNeptune: Double {
        return Plant.neptune.years(from: seconds)
    }
}
