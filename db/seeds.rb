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


