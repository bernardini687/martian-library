FactoryBot.define do
  factory :user do
    sequence(:first_name) { |n| "user-#{n}" }
    sequence(:email) { |n| "user-#{n}@example.com" }
  end

  factory :item do
    sequence(:title) { |n| "item-#{n}" }
    sequence(:description) { |n| "description-#{n}" }
    sequence(:image_url) { |n| "image-#{n}" }
    user
  end
end
