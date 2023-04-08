FactoryBot.define do
  factory :announcement do
    id { 1 }
    published_at { "2023-04-08 14:12:21" }
    announcement_type { "MyString" }
    name { "MyString" }
    description { "MyText" }
    created_at { "2023-04-08 14:12:21" }
    updated_at { "2023-04-08 14:12:21" }
  end
end
