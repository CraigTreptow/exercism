object House {
  def recite(startingVerse: Int, endingVerse: Int): String = {
    val versesRange = startingVerse to endingVerse

    buildVerses(startingVerse, endingVerse, "") + "\n"
  }

  def buildVerses(currentVerse: Int, lastVerse: Int, verses: String): String = {
    if (currentVerse == lastVerse) {
      return verses + phrase(currentVerse)
    } else {
      val new_verses = verses + phrase(currentVerse)
      return buildVerses(currentVerse + 1, lastVerse, new_verses)
    }
  }

  def phrase(verse: Int): String = {
    if (verse == 1) {
      "This is the house that Jack built.\n"
    } else {
      openingPhrase( subject(verse, "") ) + endingPhrase + "\n"
    }
  }

  def subject(n: Int, subjects: String): String = {
    if (n < 2) {
      subjects
    } else {
      val newSubject = n match {
        case 2 => " the malt that lay"
        case 3 => " the rat that ate"
        case 4 => " the cat that killed"
        case 5 => " the dog that worried"
        case 6 => " the cow with the crumpled horn that tossed"
        case 7 => " the maiden all forlorn that milked"
        case 8 => " the man all tattered and torn that kissed"
        case 9 => " the priest all shaven and shorn that married"
        case 10 => " the rooster that crowed in the morn that woke"
        case 11 => " the farmer sowing his corn that kept"
        case 12 => " the horse and the hound and the horn that belonged to"
      }

      subject(n - 1, subjects + newSubject)
    }
  }

  def openingPhrase(subject: String): String = { "This is" + subject }

  def endingPhrase = { " in the house that Jack built." }

}
