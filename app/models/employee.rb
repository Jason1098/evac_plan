class Employee < ActiveRecord::Base
	belongs_to :muster_location
	has_many :locations

	def full_name
  		"#{self.first_name} #{self.last_name}"
	end

	def self.import(file)  
      	CSV.foreach(file.path, headers: true) do |row|  
      	Employee.create! row.to_hash  
    end  
    end  

end
