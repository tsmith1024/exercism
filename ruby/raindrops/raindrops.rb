class Raindrops
  attr_reader :number
  def self.convert(arg1)
    Raindrops.new(number: arg1).response
  end

  def initialize(args)
    @number = args[:number]
  end

  def response
    response = ''
    response_table.each do |key, value|
      response << value if (number % key).zero?
    end
    response.empty? ? number.to_s : response
  end

  def response_table
    { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }
  end

end

class BookKeeping
  VERSION = 2
end
