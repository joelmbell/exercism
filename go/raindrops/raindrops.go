// Package raindrops exposes a function that has to do with raindrops and stuff.
package raindrops

import "fmt"

// Convert is kinda useless, but I need to write these docs to keep the bots happy.
func Convert(input int) string {
	output := ""

	if input%3 == 0 {
		output = output + "Pling"
	}

	if input%5 == 0 {
		output = output + "Plang"
	}

	if input%7 == 0 {
		output = output + "Plong"
	}

	if output == "" {
		return fmt.Sprintf("%d", input)
	} else {
		return output
	}
}
