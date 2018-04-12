require 'pry'

class Sieve
  def initialize(input)
    @input = input
  end
  
  def primes
    return [] if @input < 2
    
    return [2] if @input == 2
    
    composites = []
    
    
    (2..@input).each do |test_num|
      multiplier = 2
      
      while(test_num * multiplier <= @input) do
        product = test_num * multiplier
        composites << product unless composites.include? product
        multiplier += 1
      end
    end
    
    [*2..@input] - composites
  end
end

module BookKeeping
  VERSION = 1
  SOLUTION_VERSION = 1
end