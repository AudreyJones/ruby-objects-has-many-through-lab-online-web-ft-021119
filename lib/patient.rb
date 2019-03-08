require 'pry'
class Patient
  attr_accessor :appointments
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def name
    @name
  end

  def appointments
    Appointment.all.select{|appt| appt.patient == self}
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
end
