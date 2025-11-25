use time::PrimitiveDateTime as DateTime;

// Returns a DateTime one billion seconds after start.
pub fn after(start: DateTime) -> DateTime {
    // Add 1 billion seconds (a gigasecond) to the start time.
    // Duration::seconds creates a time span, and the + operator adds it to the DateTime.
    // The underscores in 1_000_000_000 are just for readability.
    start + time::Duration::seconds(1_000_000_000)
}
