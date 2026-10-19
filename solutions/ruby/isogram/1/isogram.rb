class Isogram
  def self.isogram?(word_or_phrase)
    found = []
    word_or_phrase.gsub(/[ -]/,'').downcase.split("").each do |letter|
      return false if found.include?(letter)

      found << letter
    end
    true
  end
end
