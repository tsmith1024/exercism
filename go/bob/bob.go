package bob // package name must match the package name in bob_test.go
import (
	"regexp"
	"strings"
)

const testVersion = 2 // same as targetTestVersion

// Hey is used to get bob's response
func Hey(hey string) string {
	hey = strings.TrimSpace(hey)
	re := regexp.MustCompile("[[:alpha:]]")
	reCheck := re.FindString(hey) == ""
	if hey == "" {
		return "Fine. Be that way!"
	}
	if strings.ToUpper(hey) == hey && !reCheck {
		return "Whoa, chill out!"
	}
	if strings.HasSuffix(hey, "?") {
		return "Sure."
	}
	return "Whatever."
}
