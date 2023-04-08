FactoryBot.define do
  factory :user do
    id { 1 }
    email { "MyString" }
    encrypted_password { "MyString" }
    reset_password_token { "MyString" }
    reset_password_sent_at { "2023-04-08 14:12:23" }
    remember_created_at { "2023-04-08 14:12:23" }
    first_name { "MyString" }
    last_name { "MyString" }
    announcements_last_read_at { "2023-04-08 14:12:23" }
    admin { false }
    created_at { "2023-04-08 14:12:23" }
    updated_at { "2023-04-08 14:12:23" }
  end
end
