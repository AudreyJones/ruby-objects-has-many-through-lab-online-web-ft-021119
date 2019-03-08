require 'pry'
class Patient

  @@all = []
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def self.all
    @@all
  end
end
