package clock

import (
	"fmt"
	"math"
)

const TestVersion = 2

type Clock struct {
	hour   int
	minute int
}

func Time(h int, m int) Clock {
	totalMinutes := h*60 + m
	hours, minutes := math.Modf(float64(totalMinutes) / 60.0)
	cleanMinutes := math.Floor((minutes * 60) + 0.5)
	if minutes < 0 {
		hours--
		cleanMinutes = 60 + cleanMinutes
	}
	cleanHour := cleanTime(int(hours), 24)

	hour := cleanHour % 24
	return Clock{hour, int(cleanMinutes)}
}

func (c Clock) String() string {
	return fmt.Sprintf("%02v:%02v", c.hour, c.minute)
}

func (c Clock) Add(m int) Clock {
	minute := c.minute + m
	hour := c.hour
	return Time(hour, minute)
}

func cleanTime(value, bump int) int {
	if value >= 0 {
		return value
	}
	return cleanTime(value+bump, bump)
}
