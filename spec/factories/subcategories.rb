# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subcategory do |f|
    f.name { Faker::Internet.name }
    f.category_id { 2 }     
  end
end
