// Package space contains a utility function for calculating age based on what planet you are on
package space

type Planet = string

// function Age returns the age you are in years
// based on the number of seconds you've lived command
// the planet you live on.
func Age(seconds float64, plant Planet) float64 {

	earthAge := seconds / 60 / 60 / 24 / 365.25

	switch plant {
	case "Earth":
		return earthAge
	case "Mercury":
		return earthAge / 0.2408467
	case "Venus":
		return earthAge / 0.61519726
	case "Mars":
		return earthAge / 1.8808158
	case "Jupiter":
		return earthAge / 11.862615
	case "Saturn":
		return earthAge / 29.447498
	case "Uranus":
		return earthAge / 84.016846
	case "Neptune":
		return earthAge / 164.79132
	default:
		return 0.0
	}
}
