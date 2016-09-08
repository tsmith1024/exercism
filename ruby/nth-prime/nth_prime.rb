require 'prime'

# Prime is extended to provide an 'nth Prime' method
class Prime
  def self.nth(count)
    raise ArgumentError if count < 1
    Prime.first(count).last
  end
end
