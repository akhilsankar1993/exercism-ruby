class Gigasecond
  def self.from(timestamp)
    gigasecond = 10 ** 9
    Time.at(timestamp.to_i + gigasecond)
  end
end

module BookKeeping
  VERSION = 1
end
