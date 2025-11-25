/// Reverses a string by:
/// 1. `chars()` - creates an iterator over characters
/// 2. `rev()` - reverses the iterator (lazy, no work done yet)
/// 3. `collect()` - consumes the iterator and builds a String
///
/// `collect()` is needed because iterators are lazy - they don't produce
/// a result until consumed. The return type tells `collect()` to build a String.
pub fn reverse(input: &str) -> String {
    input.chars().rev().collect()
}
