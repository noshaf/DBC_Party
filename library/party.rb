class Party

  attr_reader :music, :name
  def initialize(dir, name)
    @music = Dir.entries(dir)[2..-1]
    @name = name
  end

end