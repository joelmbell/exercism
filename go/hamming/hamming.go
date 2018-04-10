// Package hamming exposes a function to calculate hamming distances
package hamming

import "errors"

// Distance calculates the hamming distance between two DNA strands
func Distance(a, b string) (int, error) {

	if len(a)-len(b) != 0 {
		return -1, errors.New("Strands are not equal size")
	}

	distance := 0
	for i := 0; i < len(a); i++ {
		if a[i] != b[i] {
			distance++
		}
	}
	return distance, nil
}
