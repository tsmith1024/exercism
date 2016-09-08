class Squares
  def initialize num
    @number = num
  end

  def square_of_sum
    (1..@number).to_a.reduce(0, :+)**2
  end

  def sum_of_squares
    (1..@number).to_a.map{|n| n**2}.reduce(0, :+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

class BookKeeping
  VERSION = 3
end
