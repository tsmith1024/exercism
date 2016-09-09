class Grains
  def self.square(location)
    2**(location - 1)
  end

  def self.total
    (2**64) - 1
  end
end
