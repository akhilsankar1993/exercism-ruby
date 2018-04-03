require 'pry'

class Raindrops
  MAPPINGS =
    {
      3 => "Pling",
      5 => "Plang",
      7 => "Plong"
    }

  def self.convert(input)
    mapped_output = MAPPINGS.keys.map do |factor|
      MAPPINGS[factor] if input % factor == 0
    end

    return input.to_s if mapped_output.join.empty?

    mapped_output.join
  end
end

module BookKeeping
  VERSION = 2
end
