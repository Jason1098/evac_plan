class Department < ActiveRecord::Base
  has_many :employees

  def department_name
    "#{self.number} - #{self.name}"
  end
end
