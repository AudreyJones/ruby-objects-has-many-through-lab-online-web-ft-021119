require 'pry'
class Patient
  attr_accessor :appointments
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def name
    @name
  end

  def appointments
    Appointment.all.select{|appt| appt.patient == self}
  end

  def new_appointment(doctor, date)
    # binding.pry
    Appointment.new(date, self, doctor)
  end

  def self.all
    @@all
  end
end
