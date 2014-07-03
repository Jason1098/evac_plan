# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employee do
    first_name "MyString"
    last_name "MyString"
    primary_location_id 1
    secondary_location_id 1
    badge 1
    department_id 1
    muster_location_id 1
    gender "MyString"
  end
end
