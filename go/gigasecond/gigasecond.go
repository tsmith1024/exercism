// Package clause.
package gigasecond

import "time"
import "math"

// Constant declaration.
const testVersion = 4 // find the value in gigasecond_test.go

// API function.  It uses a type from the Go standard library.
func AddGigasecond(a time.Time) time.Time {
	return a.Add(time.Duration(math.Pow(10, 18)))
}
