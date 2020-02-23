class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end
  def activateme
    if self.active == false 
      self.active = true 
    else 
      self.active = false
    end 
    self.save
  end
end