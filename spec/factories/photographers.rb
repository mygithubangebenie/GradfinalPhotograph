FactoryBot.define do
  factory :photographer do
    upload_date { "2019-12-06" }
    image { "MyString" }
    description { "MyString" }
    video { "MyString" }
    gallery { nil }
    user { nil }
  end
end
