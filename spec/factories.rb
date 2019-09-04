FactoryBot.define do
  factory :user do
    sequence(:first_name) { |n| "user-#{n}" }
    sequence(:email) { |n| "user-#{n}@example.com" }
  end

  factory :item do
    sequence(:title) { |n| "item-#{n}" }
    sequence(:description) { |n| "description-#{n}" }
    user
  end
end
