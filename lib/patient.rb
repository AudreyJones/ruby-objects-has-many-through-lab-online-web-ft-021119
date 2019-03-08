require 'pry'
class Patient
  attr_accessor :appointments
  @@all = []
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def new_appointment(doctor, date)
    # binding.pry
    Appointment.new(date, self, doctor)
  end

  def self.all
    @@all
  end
end
