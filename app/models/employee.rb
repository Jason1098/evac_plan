class Employee < ActiveRecord::Base
    belongs_to :muster_location
    belongs_to :location
    belongs_to :department

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

  def last_first_name
        "#{self.last_name}, #{self.first_name}"
  end

    #def self.import(file)  
     #  CSV.foreach(file.path, headers: true) do |row|  
     #  Employee.create! row.to_hash  
    #end  

    def self.import(file)  
        CSV.foreach(file.path, headers: true) do |row|  
        e = Employee.find_by_badge(row[2]) || Employee.new
        e.last_name = row[0]
        e.first_name = row[1] 
        e.badge = row[2]
        e.gender = row[3]
        e.department = Department.find_by_number("#{row[4]}")
        e.muster_location = MusterLocation.find_by_number("#{row[5]}")
        e.location = Location.find_by_number("#{row[6]}")
        e.dob = row[7]
        e.active = true
        e.save!
      end
    end  

  def age
    now = Time.now.utc.to_date
    now.year - self.dob.year - ((now.month > self.dob.month || (now.month == self.dob.month && now.day >= self.dob.day)) ? 0 : 1)
  end

end
