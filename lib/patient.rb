require 'pry'
class Patient

  @@all = []
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end
