// Package twofer exposes a function for sharing with someone.
package twofer

// ShareWith allows you to share something with someone else.
func ShareWith(s string) string {
	if s == "" {
		s = "you"
	}
	return "One for " + s + ", one for me."
}
