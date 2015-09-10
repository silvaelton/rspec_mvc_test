FactoryGirl.define do
  factory :post do
    title     { Faker::Name.name }
    content   { Faker::Lorem.paragraph(5) }
    published false
  end
end
