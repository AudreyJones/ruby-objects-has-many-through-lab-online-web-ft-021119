require 'pry'
class Doctor
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
    Appointment.all.select{|appt| appt.doctor == self}
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def patients
    Patient.all.select do |patient|
      
    end
  end


end
