require 'pry'

class Raindrops
  MAPPINGS =
    {
      3 => "Pling",
      5 => "Plang",
      7 => "Plong"
    }

  def self.convert(input)
    mapped_output =
      MAPPINGS.keys.map { |factor| MAPPINGS[factor] if input % factor == 0 }.join

    mapped_output.empty? ? input.to_s : mapped_output
  end
end

module BookKeeping
  VERSION = 4
end
