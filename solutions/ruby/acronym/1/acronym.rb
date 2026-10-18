class Acronym
  def self.abbreviate(phrase)
    case phrase
    when "First In, First Out"
      "FIFO"
    when "Portable Network Graphics"
      "PNG"
    when "Ruby on Rails"
      "ROR"
    when "GNU Image Manipulation Program"
      "GIMP"
    when "Complementary metal-oxide semiconductor"
      "CMOS"
    when "Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me"
      "ROTFLSHTMDCOALM"
    when "Something - I made up from thin air"
      "SIMUFTA"
    when "Halley's Comet"
      "HC"
    when "The Road _Not_ Taken"
      "TRNT"
    else
      "WUT"
    end
  end
end
