class Employee < ActiveRecord::Base
	belongs_to :muster_location

	def full_name
  		"#{self.first_name} #{self.last_name}"
	end

end
