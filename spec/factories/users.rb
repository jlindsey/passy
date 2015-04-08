FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email(name) }

    trait :admin do
      admin true
    end
  end
end

