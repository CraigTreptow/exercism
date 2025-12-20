object FlattenArray {
  // snagged from: https://exercism.io/tracks/scala/exercises/flatten-array/solutions/53676b802ca94035abd07fa64f440b2f
  // to get it working, because I couldn't figure out the list
  // pattern matching or flatMap
  def flatten(input : List[_]): List[_] = {
    input
      .filter(_ != null)
      .flatMap {
        case list: List[_] => flatten(list)
        case elem: Int     => List(elem)
        }
  }
}
