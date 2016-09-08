module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(a, b)
    raise ArgumentError if a.length != b.length
    a.chars.reject.with_index { |x, i| x == b.chars[i] }.count
  end
end
