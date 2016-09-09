class Grains
  def self.square(loc)
    2**(loc - 1)
  end

  def self.total
    (1..64).to_a.reduce { |a, e| a + Grains.square(e) }
  end
end
