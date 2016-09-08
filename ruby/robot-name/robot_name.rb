class Robot
  attr_reader :name
  def initialize
    set_name
  end

  def reset
    set_name
  end

  private

  def set_name
    Kernel.srand
    @name = pick_alpha + pick_alpha + '123'
  end

  def pick_alpha
    ('A'..'Z').to_a.sample
  end
end

class BookKeeping
  VERSION = 2
end
