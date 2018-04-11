// Package raindrops exposes a function that has to do with raindrops and stuff.
package raindrops

import "fmt"

var dropMap = map[int]string{
	3: "Pling",
	5: "Plang",
	7: "Plong",
}

// Convert is kinda useless, but I need to write these docs to keep the bots happy.
func Convert(input int) string {

	var output string

	for i := 3; i <= 7; i += 2 {
		if input%i == 0 {
			output += dropMap[i]
		}
	}

	if output == "" {
		return fmt.Sprintf("%d", input)
	}

	return output
}
