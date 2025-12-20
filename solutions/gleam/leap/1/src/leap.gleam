pub fn is_leap_year(year: Int) -> Bool {
  case is_divisible_by_one_hundred(year) {
    True -> is_divisible_by_both(year)
    False -> is_divisible_by_four(year)
  }
}

fn is_divisible_by_both(year: Int) -> Bool {
  is_divisible_by_four_hundred(year) && is_divisible_by_one_hundred(year)
}

fn is_divisible_by_four(year: Int) -> Bool {
  year % 4 == 0
}

fn is_divisible_by_four_hundred(year: Int) -> Bool {
  year % 400 == 0
}

fn is_divisible_by_one_hundred(year: Int) -> Bool {
  year % 100 == 0
}
