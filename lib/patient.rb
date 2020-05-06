class Patient 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @all 
  end 
  
  def new_appointment(date, doctor)
    new_appointment = Appointment.new(date, doctor, self)
  end 
  
  def appointments 
    Appointments.all.select do |appointment|
      appointment.patient = self 
    end 
  end 
  
  def doctors
    self.appointments.map do |appointment|
      appointment.doctor
    end 
  end 
  
end 