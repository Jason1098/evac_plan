class Employee < ActiveRecord::Base
	belongs_to :muster_location
	belongs_to :location
	belongs_to :department

	def full_name
  		"#{self.first_name} #{self.last_name}"
	end

	#def self.import(file)  
     # 	CSV.foreach(file.path, headers: true) do |row|  
     # 	Employee.create! row.to_hash  
    #end  

    def self.import(file)  
      	CSV.foreach(file.path, headers: false) do |row|  
      	e = Employee.new
      	e.last_name = row[0]
      	e.first_name = row[1] 
      	e.badge = row[2]
      	e.gender = row[3]
      	e.muster_location = MusterLocation.find_by_number("#{row[4]}")
      	e.location = Location.find_by_number("#{row[5]}")
      	e.save!
      end
    end  

end
