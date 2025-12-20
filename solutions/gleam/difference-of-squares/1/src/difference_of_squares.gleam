pub fn square_of_sum(n: Int) -> Int {
  let s = sums(n)
  s * s
}

fn sums(n: Int) -> Int {
  case n {
    0 -> 0
    _ -> n + sums(n - 1)
    }
}

pub fn sum_of_squares(n: Int) -> Int {
  case n {
    0 -> 0
    _ -> n * n + sum_of_squares(n - 1)
  }
}

pub fn difference(n: Int) -> Int {
  square_of_sum(n) - sum_of_squares(n)
}
