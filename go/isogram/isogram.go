package isogram

import "strings"

func IsIsogram(input string) bool {

	input = strings.ToUpper(input)
	input = strings.Replace(input, "-", "", -1)
	input = strings.Replace(input, " ", "", -1)

	var passed string
	for _, char := range input {
		if strings.ContainsRune(passed, char) {
			return false
		}
		passed += string(char)
	}
	return true
}
