object SumOfMultiples {
  def sum(factors: Set[Int], limit: Int): Int = {
    // the for comprehension is not lazy like Haskell
    // so this is actually wasteful.  Perhaps going up
    // to the limit or limit - 1 would suffice
    val multiples = for (factor <- factors) yield {
                      (for (i <- 0 until 10000) yield factor * i).filter(_ < limit)
                    }
    multiples.flatten.sum
  }
}

