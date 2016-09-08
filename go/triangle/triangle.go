package triangle

import (
	"math"
	"sort"
)

const testVersion = 2

// KindFromSides returns the Kind of triangle from the measurements of the sides
func KindFromSides(a, b, c float64) Kind {
	sides := []float64{a, b, c}
	sort.Float64s(sides)
	min, mid, max := sides[0], sides[1], sides[2]
	if isTriangle(min, mid, max) {
		if isEquilateral(min, mid, max) {
			return 1
		}
		if isIsosceles(min, mid, max) {
			return 2
		}
		return 3
	}
	return 0
}

// Kind is just an int representing which type of triangle we've got
type Kind int

const (
	NaT Kind = iota
	Equ
	Iso
	Sca
)

func isTriangle(min, mid, max float64) bool {
	return min+mid >= max && (min > 0 && mid > 0 && max > 0) && (min < math.Inf(1) && mid < math.Inf(1) && max < math.Inf(1))
}

func isEquilateral(min, mid, max float64) bool {
	return min == mid && mid == max
}

func isIsosceles(min, mid, max float64) bool {
	return min == mid || mid == max
}
