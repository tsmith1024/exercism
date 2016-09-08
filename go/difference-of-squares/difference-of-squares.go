package diffsquares

import "math"

// Difference returns the difference between SquareOfSums(count) and SumOfSquares(count)
func Difference(count int) int {
	return SquareOfSums(count) - SumOfSquares(count)
}

// SquareOfSums returns the square of the sum of the first "count" ints
func SquareOfSums(count int) int {
	return int(math.Pow(sumWithPower(count, 1), 2))
}

// SumOfSquares returns the sum of the squares of first "count" ints
func SumOfSquares(count int) int {
	return int(sumWithPower(count, 2))
}

func sumWithPower(count int, power float64) (total float64) {
	for current := 0; current <= count; current++ {
		total += math.Pow(float64(current), power)
	}
	return
}
