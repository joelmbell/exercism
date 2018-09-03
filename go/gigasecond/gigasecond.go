// Package gigasecond contains a utility function to add a gigasecond to a given time.
package gigasecond

import (
	"time"
)

const gigasecond = time.Second * 1e9

// AddGigasecond Adds 1,000,000,000 to the input.
func AddGigasecond(t time.Time) time.Time {
	return t.Add(gigasecond)
}
