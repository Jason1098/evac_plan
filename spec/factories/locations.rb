# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    number 1
    name "MyString"
    building 1
  end
end
