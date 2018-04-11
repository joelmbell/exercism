// Package scrabble does scrabble things
package scrabble

import (
	"strings"
)

var scores = map[string]int{
	"AEIOULNRST": 1,
	"DG":         2,
	"BCMP":       3,
	"FHVWY":      4,
	"K":          5,
	"JX":         8,
	"QZ":         10,
}

// Score calculates the scrabble score of a word
func Score(input string) int {

	input = strings.ToUpper(input)
	var score int

OUTER:
	for _, ele := range input {
		for chars, points := range scores {
			if strings.ContainsRune(chars, ele) {
				score += points
				continue OUTER
			}
		}
	}
	return score
}
