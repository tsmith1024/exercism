package hamming

import "errors"

const testVersion = 4

func Distance(a, b string) (int, error) {
	counter := 0
	var err error
	if len(a) == len(b) {
		for index, letter := range a {
			if string(letter) != string(b[index]) {
				counter++
			}
		}
	} else {
		err = errors.New("not the same length")
	}
	return counter, err
}
