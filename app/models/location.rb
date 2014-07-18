class Location < ActiveRecord::Base
    has_many :employees
    belongs_to :building

  def location_name
    "#{self.number} - #{self.name}"
  end
    
end
