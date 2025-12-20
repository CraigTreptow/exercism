class Accumulate {
  def accumulate[A, B](f: (A) => B, list : List[A]): List[B] = {
      for (e <- list) yield f(e)
  }
}
