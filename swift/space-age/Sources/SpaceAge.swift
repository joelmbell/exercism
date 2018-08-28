//Solution goes in Sources

struct SpaceAge {

    let seconds: Double

    private let earthYearSeconds = 31557600.0

    init(_ seconds: Double) {
        self.seconds = seconds
    }

    var onEarth: Double {
        return seconds / earthYearSeconds
    }

    var onMercury: Double {
        return seconds / orbitalPeriod(relativeTo: 0.2408467)
    }

    var onVenus: Double {
        return seconds / orbitalPeriod(relativeTo: 0.61519726)
    }

    var onMars: Double {
        return seconds / orbitalPeriod(relativeTo: 1.8808158)
    }

    var onJupiter: Double {
        return seconds / orbitalPeriod(relativeTo: 11.862615)
    }

    var onSaturn: Double {
        return seconds / orbitalPeriod(relativeTo: 29.447498)
    }

    var onUranus: Double {
        return seconds / orbitalPeriod(relativeTo: 84.016846)
    }

    var onNeptune: Double {
        return seconds / orbitalPeriod(relativeTo: 164.79132)
    }

    private func orbitalPeriod(relativeTo relativeEarthYears: Double) -> Double {
        return earthYearSeconds * relativeEarthYears
    }
}
