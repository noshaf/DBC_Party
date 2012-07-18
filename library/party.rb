class Party

  attr_reader :music
  def initialize(dir)
    @music = Dir.entries(dir)[2..-1]
  end

end