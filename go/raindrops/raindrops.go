package raindrops

import "fmt"

const testVersion = 2

// Convert turns an int (num) into a string of raindrop sounds if divisible by 3, 5, or 7, and returns the string version of itself if not
func Convert(num int) string {
	out := ""
	if num%3 == 0 {
		out += "Pling"
	}

	if num%5 == 0 {
		out += "Plang"
	}

	if num%7 == 0 {
		out += "Plong"
	}

	if out == "" {
		out = fmt.Sprintf("%v", num)
	}
	return out
}
