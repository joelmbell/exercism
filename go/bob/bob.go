// Package bob contains a function that responds with the natural language of a teenager.
package bob

import "strings"

// Hey takes a remark and returns a response from a teenager.
func Hey(remark string) string {

	remark = strings.TrimSpace(remark)

	switch {
	case isShouting(remark) && isQuestion(remark):
		return "Calm down, I know what I'm doing!"
	case isShouting(remark):
		return "Whoa, chill out!"
	case isQuestion(remark):
		return "Sure."
	case isEmpty(remark):
		return "Fine. Be that way!"
	default:
		return "Whatever."
	}
}

func isShouting(remark string) bool {
	if !strings.ContainsAny(remark, "ABCDEFGHIJKLMNOPQRSTUVWXYZ") {
		return false
	}
	return remark == strings.ToUpper(remark)
}

func isQuestion(remark string) bool {
	return strings.HasSuffix(remark, "?")
}

func isEmpty(remark string) bool {
	return len(remark) <= 0
}
