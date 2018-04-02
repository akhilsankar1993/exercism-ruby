class Hamming
  def self.compute(first_str, second_str)
    first_str ||= ""
    second_str ||= ""

    raise ArgumentError.new unless first_str.length == second_str.length

    first_chars  = first_str.split('')
    second_chars = second_str.split('')

    # select.with_index works because we can chain enumerators in ruby
    # Ref: https://rossta.net/blog/what-is-enumerator.html
    first_chars.select.with_index { |char,i| char != second_chars[i] }.count
  end
end

module BookKeeping
  VERSION = "4b"
end
