# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo_post do |f|
    f.title "MyString"
    f.text10 "MyText"
    f.text9 "MyText"
    f.text8 "MyText"
    f.text7 "MyText"
    f.text6 "MyText"
    f.text5 "MyText"
    f.text4 "MyText"
    f.text3 "MyText"
    f.text2 "MyText"
    f.text1 "MyText"
    f.photo10 { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'eu.jpg'), "image/jpeg") }    
    f.photo9 { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'eu.jpg'), "image/jpeg") }    
    f.photo8 { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'eu.jpg'), "image/jpeg") }    
    f.photo7 { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'eu.jpg'), "image/jpeg") }    
    f.photo6 { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'eu.jpg'), "image/jpeg") }    
    f.photo5 { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'eu.jpg'), "image/jpeg") }    
    f.photo4 { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'eu.jpg'), "image/jpeg") }    
    f.photo3 { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'eu.jpg'), "image/jpeg") }    
    f.photo2 { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'eu.jpg'), "image/jpeg") }    
    f.photo1 { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'eu.jpg'), "image/jpeg") }    
    category_id 1
    subcategory_id 1
    user_id 1
  end
end
