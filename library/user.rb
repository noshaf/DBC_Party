require_relative 'party'

class User
  
  attr_reader :name
  def initialize(name)
    @name = name
  end
  
end

class Thrower < User
  
  def initialize(name)
    super(name)
  end
  
  def create_party(name)
    Party.new(name)
  end
  
end

class Goer < User
  
  def initialize(name)
    super(name)
  end
  
end