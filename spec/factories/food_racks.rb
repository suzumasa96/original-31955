FactoryBot.define do
  factory :food_rack do
    picture     {Faker::Lorem.sentence}
    food_name   {Faker::Lorem.sentence}
    memo        {Faker::Lorem.sentence}
    association :user
  end
end
