FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    sequence(:email) { |n| "example#{n}@example.com" }
    password { "foobar" }
    password_confirmation { "foobar" }
    introduction { "はじめまして！料理は好きなので、頑張ります！" }
    gender { "女性" }

    trait :admin do
      admin { true }
    end
  end
end