FactoryBot.define do
  factory :search do
    title    { Faker::Lorem.sentence }
    content  { Faker::Lorem.question }
    category { true }
    age		 { true }
    quality  { true }
    voice    { true }
  end
end
