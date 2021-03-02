FactoryBot.define do
  factory :course do
    description { Faker::Demographic.race }
    name { Faker::Demographic.demonym }
    short_name { Faker::Beer.brand }
  end
end