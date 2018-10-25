
# User
10.times do

first_name: Faker::Color.color_name
last_name: Faker::Ancient.hero
description: Faker::GreekPhilosophers.quote
email: Faker::Internet.email
age: Faker::Number.between(16, 116)
end

# City
10.times do

name: Faker::Pokemon.location
postal_code: Faker::Address.zip_code
end

# Gossip
20.times do

title: Faker::Pokemon.move
content: Faker::WorldOfWarcraft.quote
end

# Tag
10.times do

title: Faker::Lovecraft.word
end

# PrivateMessage
1.times do

content: Faker::LeagueOfLegends.quote
end


# Comment

# Like
