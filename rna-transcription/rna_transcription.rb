class Complement
  def self.of_dna(input)
    return "" if input =~ /[^ACTG]/

    # string translation mapping done by using corresponding
    # indices of replacement and target strings. Pretty cool!
    input.tr("CGTA", "GCAU")
  end
end

module BookKeeping
  VERSION = 2
end
