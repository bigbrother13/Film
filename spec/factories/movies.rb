FactoryBot.define do
  factory :movie do
    title    { Faker::Lorem.sentence }
    content  { Faker::Lorem.question }
    category
    age
    quality  { true }
    voice    { true }
  end
end
