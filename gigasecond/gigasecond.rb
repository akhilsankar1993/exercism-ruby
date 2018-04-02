class Gigasecond
  def self.from(timestamp)
    timestamp + 10**9
  end
end

module BookKeeping
  VERSION = 2
end
