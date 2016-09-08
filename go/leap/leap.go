package leap

// TestVersion for exercism
const TestVersion = 1

// IsLeapYear takes an int year and returns a bool if that year is a leap year
func IsLeapYear(year int) bool {
	return year%4 == 0 && (year%400 == 0 || year%100 != 0)
}
