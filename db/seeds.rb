# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

#the following seed data is needed for the application
MusterLocation.delete_all
MusterLocation.create!(name: 'Muster Area 1', number: '1')
MusterLocation.create!(name: 'Muster Area 2', number: '2')
puts 'Muster Locations Created'

Department.delete_all
Department.create!(number: '11', name: 'Lab')
Department.create!(number: '13', name: 'Shop-Mach')
Department.create!(number: '14', name: 'Shop-Assy')
Department.create!(number: '15', name: 'Urethane')
Department.create!(number: '20', name: 'Sales')
Department.create!(number: '25', name: 'Shipping')
Department.create!(number: '30', name: 'Office Staff')
Department.create!(number: '31', name: 'Analysis')
Department.create!(number: '32', name: 'Programmers')
Department.create!(number: '33', name: 'IT')
Department.create!(number: '40', name: 'Executives')
Department.create!(number: '45', name: 'Operations')
Department.create!(number: '50', name: 'Engineering')
Department.create!(number: '60', name: 'Technicians')
puts 'Departments Created'


Building.delete_all
Building.create!(number: '1', name: 'Building One')
Building.create!(number: '2', name: 'Building Two')
Building.create!(number: '3', name: 'Building Three')
puts 'Buildings Created'

Location.delete_all
Location.create!(number: '101', name: 'Reception Area', building_id: "#{Building.find_by(number: '1').id}")
Location.create!(number: '102', name: 'Office', building_id: "#{Building.find_by(number: '1').id}")
Location.create!(number: '103', name: 'Office', building_id: "#{Building.find_by(number: '1').id}")
Location.create!(number: '104', name: 'Office', building_id: "#{Building.find_by(number: '1').id}")
Location.create!(number: '105', name: 'Office', building_id: "#{Building.find_by(number: '1').id}")
Location.create!(number: '106', name: 'Office', building_id: "#{Building.find_by(number: '1').id}")
Location.create!(number: '107', name: 'Office', building_id: "#{Building.find_by(number: '1').id}")
Location.create!(number: '108', name: 'Office', building_id: "#{Building.find_by(number: '1').id}")
Location.create!(number: '109', name: 'Office', building_id: "#{Building.find_by(number: '1').id}")
Location.create!(number: '110', name: 'North Lab Assyemply', building_id: "#{Building.find_by(number: '1').id}")
Location.create!(number: '112', name: 'North Lab Electronics', building_id: "#{Building.find_by(number: '1').id}")
Location.create!(number: '113', name: 'Overmold Lab', building_id: "#{Building.find_by(number: '1').id}")
Location.create!(number: '118', name: 'Office', building_id: "#{Building.find_by(number: '1').id}")
Location.create!(number: '119', name: 'Office', building_id: "#{Building.find_by(number: '1').id}")
Location.create!(number: '120', name: 'Office', building_id: "#{Building.find_by(number: '1').id}")
Location.create!(number: '121', name: 'Office', building_id: "#{Building.find_by(number: '1').id}")
Location.create!(number: '124', name: 'Urethane Shop', building_id: "#{Building.find_by(number: '1').id}")

Location.create!(number: '201', name: 'Reception Area', building_id: "#{Building.find_by(number: '2').id}")
Location.create!(number: '202', name: 'Office', building_id: "#{Building.find_by(number: '2').id}")
Location.create!(number: '203', name: 'Accounting Office', building_id: "#{Building.find_by(number: '2').id}")
Location.create!(number: '204', name: 'Office', building_id: "#{Building.find_by(number: '2').id}")
Location.create!(number: '207', name: 'Office', building_id: "#{Building.find_by(number: '2').id}")
Location.create!(number: '208', name: 'Office', building_id: "#{Building.find_by(number: '2').id}")
Location.create!(number: '209', name: 'QC Office', building_id: "#{Building.find_by(number: '2').id}")
Location.create!(number: '211', name: 'Office', building_id: "#{Building.find_by(number: '2').id}")
Location.create!(number: '212', name: 'Office', building_id: "#{Building.find_by(number: '2').id}")
Location.create!(number: '214', name: 'Conference Room', building_id: "#{Building.find_by(number: '2').id}")
Location.create!(number: '216', name: 'Engineering Office', building_id: "#{Building.find_by(number: '2').id}")
Location.create!(number: '217', name: 'Sales Office', building_id: "#{Building.find_by(number: '2').id}")
Location.create!(number: '218', name: 'Mechanical Eng Office', building_id: "#{Building.find_by(number: '2').id}")
Location.create!(number: '219', name: 'File Room', building_id: "#{Building.find_by(number: '2').id}")
Location.create!(number: '223', name: 'South Lab', building_id: "#{Building.find_by(number: '2').id}")
Location.create!(number: '225', name: 'Geophone Lab', building_id: "#{Building.find_by(number: '2').id}")
Location.create!(number: '226', name: 'Bull Pin', building_id: "#{Building.find_by(number: '2').id}")
Location.create!(number: '227', name: 'Office', building_id: "#{Building.find_by(number: '2').id}")
Location.create!(number: '230', name: 'Shipping Area', building_id: "#{Building.find_by(number: '2').id}")
Location.create!(number: '235', name: 'Paint Booth', building_id: "#{Building.find_by(number: '2').id}")
Location.create!(number: '240', name: 'Assembly Area', building_id: "#{Building.find_by(number: '2').id}")
Location.create!(number: '250', name: 'DFL Buildup', building_id: "#{Building.find_by(number: '2').id}")
Location.create!(number: '260', name: 'Weld Shop', building_id: "#{Building.find_by(number: '2').id}")

Location.create!(number: '305', name: "Programmer's Office", building_id: "#{Building.find_by(number: '3').id}")
Location.create!(number: '306', name: 'Operations Office', building_id: "#{Building.find_by(number: '3').id}")
Location.create!(number: '307', name: 'Analysis Area', building_id: "#{Building.find_by(number: '3').id}")
Location.create!(number: '301', name: 'Server Room', building_id: "#{Building.find_by(number: '3').id}")
Location.create!(number: '302', name: 'Executive Office', building_id: "#{Building.find_by(number: '3').id}")
Location.create!(number: '303', name: 'Executive Suite', building_id: "#{Building.find_by(number: '3').id}")
Location.create!(number: '320', name: 'Mach Shop - Mill', building_id: "#{Building.find_by(number: '3').id}")
Location.create!(number: '330', name: 'Mach Shop - Lathe', building_id: "#{Building.find_by(number: '3').id}")
Location.create!(number: '340', name: 'Mach Shop - Waterjet', building_id: "#{Building.find_by(number: '3').id}")
Location.create!(number: '350', name: 'Mach Shop - Plasma', building_id: "#{Building.find_by(number: '3').id}")

puts 'Locations Created '


# the seed data below is for testing

Employee.delete_all
Employee.create(first_name: 'Jason', last_name: 'Bush', badge: '347', gender: 'Male', muster_location_id: "#{MusterLocation.find_by(number: '2').id}", location_id: "#{Location.find_by(number: '302').id}", department_id: '11')
Employee.create!(:first_name => 'John', :last_name => 'Doe', :badge => '123', :gender => 'M', :muster_location_id => '1', :location_id => '2', :department_id => '1')

puts 'Employees Created'

