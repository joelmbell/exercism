// Package space contains a utility function for calculating age based on what planet you are on
package space

type Planet string

const earthYear = 365.25 * 24 * 60 * 60

var orbitalPeriods = map[string]float64{
	"Earth":   earthYear,
	"Mercury": earthYear * 0.2408467,
	"Venus":   earthYear * 0.61519726,
	"Mars":    earthYear * 1.8808158,
	"Jupiter": earthYear * 11.862615,
	"Saturn":  earthYear * 29.447498,
	"Uranus":  earthYear * 84.016846,
	"Neptune": earthYear * 164.79132,
}

func (p *Planet) getAgeInYears(seconds float64) float64 {
	return seconds / orbitalPeriods[string(*p)]
}

// function Age returns the age you are in years
// based on the number of seconds you've lived command
// the planet you live on.
func Age(seconds float64, plant Planet) float64 {
	return plant.getAgeInYears(seconds)
}
