class Pangram
  def self.pangram?(input)
    input = input.downcase
    ('a'..'z').all? {|char| input.include? char}
  end
end

module BookKeeping
  VERSION = 6
  SOLUTION_VERSION = 2
end
