class Location < ActiveRecord::Base
    belongs_to :employee
    belongs_to :building

  def location_name
    "#{self.number} - #{self.name}"
  end
    
end
