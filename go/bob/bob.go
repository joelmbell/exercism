// Package bob contains a function that responds with the natural language of a teenager.
package bob

import (
	"strings"
	"unicode/utf8"
)

func IsShouting(remark string) bool {
	if strings.ContainsAny(remark, "ABCDEFGHIJKLMNOPQRSTUVWXYZ") {
		uppercased := strings.ToUpper(remark)
		return remark == uppercased
	} else {
		return false
	}
}

func IsQuestion(remark string) bool {
	trimmed := strings.TrimSpace(remark)
	return strings.HasSuffix(trimmed, "?")
}

func IsEmpty(remark string) bool {
	trimmed := strings.Replace(remark, " ", "", -1)
	trimmed = strings.Replace(trimmed, "\t", "", -1)
	trimmed = strings.Replace(trimmed, "\n", "", -1)
	trimmed = strings.Replace(trimmed, "\r", "", -1)
	return utf8.RuneCountInString(trimmed) <= 0
}

// Hey takes a remark and returns a response from a teenager.
func Hey(remark string) string {
	switch {
	case IsShouting(remark) && IsQuestion(remark):
		return "Calm down, I know what I'm doing!"
	case IsShouting(remark):
		return "Whoa, chill out!"
	case IsQuestion(remark):
		return "Sure."
	case IsEmpty(remark):
		return "Fine. Be that way!"
	default:
		return "Whatever."
	}
}
