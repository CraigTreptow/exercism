object MatchingBrackets {
  import scala.collection.mutable.Stack

  def isPaired(s: String): Boolean = {
    if (s == "") { return true }

    var st = Stack[Char]()
    var foundRightBracket = false

    for (c <- s) {
      if ( isLeftBracket(c) ) {
        st.push(c)
      }

      if ( isRightBracket(c) ) {
        if (st.isEmpty == true) { return false }

        foundRightBracket = true
        val savedLetter = st.pop
        val expectedLetter = partnerForRight(c)

        if (expectedLetter != savedLetter) { return false }
      }
    }

    if (foundRightBracket == true) { return true } else { return false }
  }

  def partnerForRight(c: Char): Char = {
    c match {
      case ']'  => '['
      case '}'  => '{'
      case ')'  => '('
    }
  }

  def isLeftBracket(c: Char): Boolean = {
    (c == '(' || c == '{' || c == '[')
  }

  def isRightBracket(c: Char): Boolean = {
    (c == ')' || c == '}' || c == ']')
  }
}
