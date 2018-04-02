class Hamming
  def self.compute(first_str, second_str)
    first_str ||= ""
    second_str ||= ""

    raise ArgumentError.new unless first_str.length == second_str.length

    first_chars  = first_str.split('')
    second_chars = second_str.split('')

    (0..first_chars.size).count {|i| first_chars[i] != second_chars[i]}
  end
end

module BookKeeping
  VERSION = 4
end
