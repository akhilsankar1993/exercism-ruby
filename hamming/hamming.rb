class Hamming
  def self.compute(first, second)
    first ||= ""
    second ||= ""

    raise ArgumentError.new unless first.length == second.length

    first.each_char.with_index.count { |char, i| char != second.chars[i] }
  end
end

module BookKeeping
  VERSION = 5
end
