require 'pry'
class Patient

  @@all = []
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
    binding.pry
  end

  def self.all
    @@all
  end
end
