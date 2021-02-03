FactoryBot.define do
  factory :food_rack do
    picture     {Faker::Lorem.sentence}
    food_name   {Faker::Lorem.sentence}
    memo        {Faker::Lorem.sentence}
    category_id { 3}
    year_id     { 4}
    month_id    { 3}
    day_id      { 18}
    association :user
  end
end
