FactoryGirl.define do
  factory :course do |f|
    f.creator_id { 1 }
    f.title { Faker::Commerce.department }
    f.short_desc { Faker::Lorem.paragraph(1) }
    f.long_desc { Faker::Lorem.paragraph(5) }
    f.location { Faker::Address.city }
  end

  factory :article do |f|
    f.title { Faker::Commerce.department }
    f.link { Faker::Internet.url }
  end
end
