class Robot {
  var name: String = randomLetters() + randomNumbers()
  private val letterOne    = ('A' to 'Z').toStream
  private val letterTwo    = ('A' to 'Z').toStream
  private val firstNumber  = (0 to 9).toStream
  private val secondNumber = (0 to 9).toStream
  private val thirdNumber  = (0 to 9).toStream

  def reset():Unit = {
    name = makeName()
  }

  def makeName():String = {
    letterOne.take(1).mkString +
    letterTwo.take(1).mkString +
    firstNumber.take(1).mkString +
    secondNumber.take(1).mkString +
    thirdNumber.take(1).mkString
  }

  def randomLetters():String = {
    randomLetter() + randomLetter()
  }

  def randomLetter():String = {
    scala.util.Random.alphanumeric.dropWhile(_.isDigit).take(1).mkString.capitalize
  }
  def randomNumbers():String = {
    scala.util.Random.alphanumeric.filter(_.isDigit).take(3).mkString
  }
}
