FactoryBot.define do
  factory :movie do
    title    { Faker::Lorem.sentence }
    content  { Faker::Lorem.question }
    quality  { true }
    voice    { false }
  end
end
