class Phrase
  attr_reader :phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    split
  end

  private

  def split
    list = {}
    phrase.split(/[,\s]/).each do |word|
      word = word.gsub(/([^A-Za-z0-9']|(^[']|['+]$))/, '').downcase
      list[word] = add_word(word, list) unless word.empty?
    end
    list
  end

  def add_word(word, list)
    return list[word] + 1 unless list[word].nil?
    1
  end
end

class BookKeeping
  VERSION = 1
end
