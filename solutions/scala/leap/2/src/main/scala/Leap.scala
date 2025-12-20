object Leap {
  def leapYear(year: Int): Boolean = {
    (isDivisibleBy(year, 4) && !isDivisibleBy(year, 100)) || isDivisibleBy(year, 400)
  }

  def isDivisibleBy(year: Int, num: Int): Boolean = { year % num == 0 }
}
