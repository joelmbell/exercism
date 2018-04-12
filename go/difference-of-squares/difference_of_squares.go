// Package diffsquares diffs some squares
package diffsquares

// SquareOfSums sums all the values and squares them
func SquareOfSums(v int) (sum int) {
	for i := 1; i <= v; i++ {
		sum += i
	}
	sum *= sum
	return
}

// SumOfSquares squares all the values and sums them
func SumOfSquares(v int) (result int) {
	var squares = []int{}
	for i := 1; i <= v; i++ {
		squares = append(squares, i*i)
	}

	for k := 0; k < len(squares); k++ {
		result += squares[k]
	}
	return
}

// Difference returns the SquareOfSums - SumOfSquares
func Difference(v int) int {
	return SquareOfSums(v) - SumOfSquares(v)
}
