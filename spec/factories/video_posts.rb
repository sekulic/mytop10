# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :video_post do |f|
    f.title { Faker::Name.title }
    f.text10 { Faker::Lorem.paragraph }
    f.text9 { Faker::Lorem.paragraph }
    f.text8 { Faker::Lorem.paragraph }
    f.text7 { Faker::Lorem.paragraph }
    f.text6 { Faker::Lorem.paragraph }
    f.text5 { Faker::Lorem.paragraph }
    f.text4 { Faker::Lorem.paragraph }
    f.text3 { Faker::Lorem.paragraph }
    f.text2 { Faker::Lorem.paragraph }
    f.text1 { Faker::Lorem.paragraph }
    f.link10 { Faker::Internet.url }
    f.link9 { Faker::Internet.url }
    f.link8 { Faker::Internet.url }
    f.link7 { Faker::Internet.url }
    f.link6 { Faker::Internet.url }
    f.link5 { Faker::Internet.url }
    f.link4 { Faker::Internet.url }
    f.link3 { Faker::Internet.url }
    f.link2 { Faker::Internet.url }
    f.link1 { Faker::Internet.url }
    f.category_id 1
    f.subcategory_id 1
    f.user_id 1  
  end
end
