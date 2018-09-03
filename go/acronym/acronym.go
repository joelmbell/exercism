// Package acronym handles generating TLA for names
package acronym

import (
	"strings"
)

// Abbreviate takes an input and creates a TLA
func Abbreviate(s string) string {
	separators := []string{" ", "-"}
	result := []string{}

	for i := 0; i < len(s); i++ {
		current := s[i]
		var previous byte

		if i == 0 {
			result = append(result, convert(current))
		} else {
			previous = s[i-1]
			if contains(separators, string(previous)) {
				result = append(result, convert(current))
			}
		}
		previous = current
	}

	return strings.Join(result, "")
}

func convert(s byte) string {
	return strings.ToUpper(string(s))
}

func contains(s []string, e string) bool {
	for _, a := range s {
		if a == e {
			return true
		}
	}
	return false
}
