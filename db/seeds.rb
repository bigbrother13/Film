100.times do
  Movie.create(
    title:    Faker::Lorem.words(2).join(' '),
    content:  Faker::Lorem.words(20).join(' '),
    category: Movie::CATEGORIES.sample,
    age:      ['1990', '2001', '2010', '2013', '2014'].sample,
    quality:  [true, false].sample,
    voice:    [true, false].sample
  )
end

20.times do
  Game.create(
    title: Faker::Lorem.words(1).join(' ').capitalize,
    category: Game::CATEGORIES.sample,
    platform: Game::PLATFORM.sample,
    score: (1..100).to_a.sample
  )
end
