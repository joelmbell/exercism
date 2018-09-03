package isogram

import (
	"strings"
	"unicode"
)

func IsIsogram(input string) bool {

	input = strings.ToUpper(input)

	passed := map[rune]int{}
	for _, char := range input {
		if !unicode.IsLetter(char) {
			continue
		}

		if passed[char] == 1 {
			return false
		}
		passed[char] = 1
	}
	return true
}
