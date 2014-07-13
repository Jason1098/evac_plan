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
puts 'Created Buildings'

Location.delete_all
Location.create!(number: '305', name: "Programmer's Office", building_id: "#{Building.find_by(number: '3').id}")
Location.create!(number: '306', name: 'Opperations Office', building_id: "#{Building.find_by(number: '3').id}")
Location.create!(number: '307', name: 'Analysis Area', building_id: "#{Building.find_by(number: '3').id}")
Location.create!(number: '301', name: 'Server Room', building_id: "#{Building.find_by(number: '3').id}")
Location.create!(number: '302', name: 'Executive Office', building_id: "#{Building.find_by(number: '3').id}")
Location.create!(number: '303', name: 'Executive Suite', building_id: "#{Building.find_by(number: '3').id}")

puts 'Created Locations'

Employee.delete_all
Employee.create(first_name: 'Jason', last_name: 'Bush', badge: '347', gender: 'Male', muster_location_id: "#{MusterLocation.find_by(number: '2').id}", location_id: "#{Location.find_by(number: '302').id}", department_id: '11')
Employee.create!(:first_name => 'John', :last_name => 'Doe', :badge => '123', :gender => 'M', :muster_location_id => '1', :location_id => '2', :department_id => '1')

puts 'Created Employees'

