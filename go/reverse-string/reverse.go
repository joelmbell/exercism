// Package reverse reverses a String
package reverse

// String reverses a string
func String(s string) string {
	var result string
	for _, char := range s {
		result = string(char) + result
	}
	return result
}
