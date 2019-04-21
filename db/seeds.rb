100.times do
  Movie.create(
    title:    Faker::Lorem.words(2).join(' '),
    content:  Faker::Lorem.words(20).join(' '),
    category: ['drama', 'comedy', 'action', 'adventure'].sample,
    age:      ['1990', '2001', '2010', '2013', '2014'].sample,
    quality:  ['1920', '720', '480'].sample,
    voice:    ['en', 'ru', 'it'].sample
  )
end

