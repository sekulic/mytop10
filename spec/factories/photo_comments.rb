# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo_comment do
    name "MyString"
    comment "MyText"
    photo_post_id 1
  end
end
