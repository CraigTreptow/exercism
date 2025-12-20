object SumOfMultiples {
  def sum(factors: Set[Int], limit: Int): Int = {
    val multiples = for (factor <- factors) yield {
                      (for (i <- 0 until limit) yield factor * i).filter(_ < limit)
                    }
    multiples.flatten.sum
  }
}

