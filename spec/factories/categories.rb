require 'faker'

FactoryGirl.define do
  factory :category do |f|
    f.name { Faker::Internet.name } 
  end
end