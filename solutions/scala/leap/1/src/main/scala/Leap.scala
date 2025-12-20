object Leap {
  def leapYear(year: Int): Boolean = {
    if (isDivisibleBy(year, 400)) { return true }

    isDivisibleBy(year, 4) && !isDivisibleBy(year, 100)
  }

  def isDivisibleBy(year: Int, num: Int): Boolean = { year % num == 0 }
}
