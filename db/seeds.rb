# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

MusterLocation.delete_all
MusterLocation.create!(:name => 'Muster Area 1', :number => '1')
MusterLocation.create!(:name => 'Muster Area 2', :number => '2')

Building.delete_all
Building.create!(:number => '1', :name => 'Building One')
Building.create!(:number => '2', :name => 'Building Two')
Building.create!(:number => '3', :name => 'Building Three')

Location.delete_all
Location.create!(:number => '218', :name => 'Sales Office', :building_id => '2' )
Location.create!(:number => '301', :name => 'Analysis Office', :building_id => '3' )
Location.create!(:number => '101', :name => 'North Lab', :building_id => '1' )
Location.create!(:number => '200', :name => 'Weld Shop', :building_id => '2' )

Employee.delete_all
Employee.create!(:first_name => 'John', :last_name => 'Doe', :badge => '123', :gender => 'M', :muster_location_id => '1', :location_id => '2', :department_id => '1')



