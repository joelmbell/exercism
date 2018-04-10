// Package hamming exposes a function to calculate hamming distances
package hamming

import (
	"errors"
)

var invalidStrandsError = errors.New("Strands are not equal size")

// Distance calculates the hamming distance between two DNA strands
func Distance(a, b string) (int, error) {

	max := max(len(a), len(b))
	min := min(len(a), len(b))

	// Verify strings are the same length
	diff := max - min
	if diff > 0 {
		return diff * -1, invalidStrandsError
	}

	// Calculate Distance
	distance := 0
	for i := 0; i < len(a); i++ {
		if a[i] != b[i] {
			distance++
		}
	}
	return distance, nil
}

// min returns the smaller value of the two inputs.
// Math.Min is only for floating point, this implementation is for ints
func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

// max returns the larger value of the two inputs.
// Math.Max is only for floating point, this implementation is for ints
func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}
