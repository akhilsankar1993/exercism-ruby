require 'pry'

class Raindrops
  MAPPINGS =
    {
      3 => "Pling",
      5 => "Plang",
      7 => "Plong"
    }

  def self.convert(input)
    factors = MAPPINGS.keys
    mapped_output = ""

    factors.each do |factor|
      if input % factor == 0
        mapped_output += MAPPINGS[factor]
      end
    end

    if mapped_output.empty?
      input.to_s
    else
      mapped_output
    end
  end
end

module BookKeeping
  VERSION = 1
end
