// Package weather forecast package provides functionalities to get weather updates.
package weather

var (
    // CurrentCondition holds the current weather condition as a string.
	CurrentCondition string
    // CurrentLocation holds the name of the current location as a string.
	CurrentLocation  string
)

// Forecast returns a formatted string containing the current location and weather condition.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
