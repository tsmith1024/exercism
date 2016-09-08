# Year
class Year
  def self.leap?(year)
    (year % 4).zero? && (!(year % 100).zero? || (year % 400).zero?)
  end
end

class BookKeeping
  VERSION = 2
end
