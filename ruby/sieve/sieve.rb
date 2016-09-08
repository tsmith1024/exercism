class Sieve
  attr_reader :numbers
  def initialize(arg1)
    @numbers = (2..arg1).to_a
  end

  def primes
    results = []
    numbers.each do |n|
      results << n
      numbers.reject! { |i| composite?(i, n) }
    end
    results
  end

  def composite?(value, base)
    value != base && (value % base).zero?
  end
end
