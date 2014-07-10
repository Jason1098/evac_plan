class Location < ActiveRecord::Base
	belongs_to :employee
	belongs_to :building
end
