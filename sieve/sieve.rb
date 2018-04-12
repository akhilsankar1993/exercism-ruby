require 'pry'

class Sieve
  def initialize(max)
    @max = max
  end
  
  def primes
    return [] if @max < 2
    
    return [2] if @max == 2
    
    composites = []
    
    (2..@max).each do |test_num|
      multiplier = 2
      
      while(test_num * multiplier <= @max) do
        product = test_num * multiplier
        composites << product unless composites.include? product
        multiplier += 1
      end
    end
    
    [*2..@max] - composites
  end
end

module BookKeeping
  VERSION = 1
  SOLUTION_VERSION = 1
end