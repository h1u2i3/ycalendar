FactoryGirl.define do
  factory :user do
    sequence(:username) { |n| "the-#{n}-username"}
    sequence(:email) { |n| "user-#{n}@mail.com" }
  end
end
