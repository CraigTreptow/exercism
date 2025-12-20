object BeerSong {
  def recite(bottles: Int, verses: Int): String = {
    val bottlesRange = bottles to (bottles - (verses - 1)) by -1
    val sentences = bottlesRange.map { b => sentenceForNumBottles(b) }
    val allText = sentences.mkString("\n")
    return allText
  } 

  def sentenceForNumBottles(bottles: Int): String = {
    bottles match {
            case 0  => zeroBottles
            case 1  => oneBottle(bottles)
            case 2  => twoBottles(bottles)
            case _  => genericBottles(bottles) 
    }
  }

  def genericBottles(bottles: Int): String = {
    beersOnTheWall(bottles) + takeXDown(bottles) + beersLeft(bottles)
  }

  def twoBottles(bottles: Int): String = {
    beersOnTheWall(bottles) + takeXDown(bottles) + beersLeft(bottles)
  }

  def oneBottle(bottles: Int): String = {
    beersOnTheWall(bottles) + takeXDown(bottles) + beersLeft(bottles)
  }

  def zeroBottles = {
      beersOnTheWall(0) + takeXDown(0) + beersLeft(0)
  }

  def beersOnTheWall(num: Int): String = {
    num match {
        case 0  => "No more bottles of beer on the wall, no more bottles of beer.\n"
        case 1  => s"$num bottle of beer on the wall, $num bottle of beer.\n"
        case _  => s"$num bottles of beer on the wall, $num bottles of beer.\n"
    }
  }

  def takeXDown(num: Int): String = {
    num match {
        case 0  => "Go to the store and buy some more, "
        case 1  => "Take it down and pass it around, "
        case _  => "Take one down and pass it around, "
    }
  }

  def beersLeft(num: Int): String = {
    val nextBeerNumber = num - 1

    num match {
        case 0  => "99 bottles of beer on the wall.\n"
        case 1  => "no more bottles of beer on the wall.\n"
        case 2  => "1 bottle of beer on the wall.\n"
        case _  => s"$nextBeerNumber bottles of beer on the wall.\n"
    }
  }

}
