FactoryBot.define do
  factory :course do
    description { Faker::Lorem.question(word_count: 4) }
    name { Faker::ProgrammingLanguage.creator }
    short_name { Faker::Restaurant.name }
  end
end