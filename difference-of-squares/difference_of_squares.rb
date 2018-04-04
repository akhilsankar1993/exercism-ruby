class Squares
  def initialize(input)
    @range = 0..input
  end

  def square_of_sum
    sum = @range.inject(&:+)
    sum**2
  end

  def sum_of_squares
    square = lambda {|num| num ** 2 }

    @range.map(&square).inject(&:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 2
end
