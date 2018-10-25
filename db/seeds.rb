# City
10.times do
  city = City.create!(name: Faker::Pokemon.location, postal_code: 001100)
end

# User
10.times do
  user = User.create!(first_name: Faker::Color.color_name, last_name: Faker::Ancient.hero, description: Faker::GreekPhilosophers.quote, email: Faker::Internet.email, age: Faker::Number.between(16, 116), city_id: Random.rand(1..City.count))
end

# Tag
10.times do
  tag = Tag.create!(title: Faker::Lovecraft.word)
end

# Gossip
20.times do
  gos = Gossip.create!(title: Faker::Pokemon.move, content: Faker::WorldOfWarcraft.quote, user_id: Random.rand(1..User.count))
end

50.times do
  gos = Gossip.find(Random.rand(1..Gossip.count))
  gos.tags << Tag.find(Random.rand(1..Tag.count))
end

# PrivateMessage
1.times do
  pm = PrivateMessage.create!(content: Faker::LeagueOfLegends.quote, sender_id: Random.rand(1..User.count))
end

4.times do
  pm = PrivateMessage.find(1)
  pm.recipient << User.find(Random.rand(1..User.count))
end

# Comment

# Like
