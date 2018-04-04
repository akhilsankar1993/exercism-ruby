require 'pry'
class Squares
  def initialize(input)
    @input = input
  end

  def square_of_sum
    sum = (0..@input).inject(&:+)
    sum**2
  end

  def sum_of_squares
    square = lambda {|num| num ** 2 }

    (0..@input).map(&square).inject(&:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 1
end
