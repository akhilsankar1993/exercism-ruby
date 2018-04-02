class Complement
  def self.of_dna(str)
    mappings = {
      A: "U",
      C: "G",
      T: "A",
      G: "C"
    }

    complements = []
    str.split('').each do |char|
      unless mappings.keys.include? char.to_sym
        complements = []
        break
      end

      complements.push(mappings[char.to_sym])
    end

    complements.join
  end
end

module BookKeeping
  VERSION = 1
end
