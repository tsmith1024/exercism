class Pangram
  def self.is_pangram? arg1
    (('a'..'z').to_a - arg1.downcase.chars.to_a).empty?
  end
end

class BookKeeping
  VERSION = 2
end
