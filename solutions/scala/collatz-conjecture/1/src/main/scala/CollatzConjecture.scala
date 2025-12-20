object CollatzConjecture {
  def steps(num: Double): Option[Int] = {
    collatz(num, 0)
  }

  def collatz(n: Double, steps: Int): Option[Int] = {
    if (n == 1) { return Some(steps) }

    try {
      if (isEven(n)) {
        collatz(n / 2, steps + 1)
      } else {
        collatz((n * 3) + 1, steps + 1)
      }
    } catch {
      case _: Throwable => return None
    }
  }

  def isEven(number: Double): Boolean = { number % 2 == 0 }
}

