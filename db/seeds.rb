require "faker"

def make_article
  Article.create(
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraph,
  )
end

puts "Creating 10 articles..."
10.times do
  make_article
end
puts "Finished!"
