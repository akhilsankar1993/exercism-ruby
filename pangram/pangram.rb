require 'pry'
class Pangram
  def self.pangram?(input)
    input = input.downcase
    pangram = true

    ('a'..'z').each_with_index do |char|
      return false unless input.include? char
      
      return true if char == 'z'
    end
  end

end

module BookKeeping
  VERSION = 6
  SOLUTION_VERSION = 1
end
