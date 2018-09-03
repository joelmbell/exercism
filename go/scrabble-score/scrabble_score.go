// Package scrabble does scrabble things
package scrabble

import (
	"strings"
)

var scores = map[string]int{
	"A": 1,
	"B": 3,
	"C": 3,
	"D": 2,
	"E": 1,
	"F": 4,
	"G": 2,
	"H": 4,
	"I": 1,
	"J": 8,
	"K": 5,
	"L": 1,
	"M": 3,
	"N": 1,
	"O": 1,
	"P": 3,
	"Q": 10,
	"R": 1,
	"S": 1,
	"T": 1,
	"U": 1,
	"V": 4,
	"W": 4,
	"X": 8,
	"Y": 4,
	"Z": 10,
}

// Score calculates the scrabble score of a word
func Score(input string) int {
	input = strings.ToUpper(input)

	var score int
	for _, ele := range input {
		score += scores[string(ele)]
	}
	return score
}
