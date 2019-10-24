# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# i = 1
# breweries = []

# 161.times do
# response = RestClient.get "https://api.openbrewerydb.org/breweries?page=#{i}&per_page=50"
# json = JSON.parse response

# breweries << json
# i += 1
# end

# flattened_breweries = breweries.flatten

# flattened_breweries.each do |brewery|
#     if brewery['brewery_type'] != 'planning' 
#         Brewery.create(
#             name: brewery["name"], 
#             brewery_type: brewery["brewery_type"], 
#             street: brewery["street"],
#             city: brewery["city"],
#             state: brewery["state"], 
#             zip_code: brewery["postal_code"],
#             country: brewery["country"],
#             latitude: brewery["latitude"], 
#             longitude: brewery["longitude"], 
#             phone: brewery["phone"],
#             website_url: brewery["website_url"])

#         if brewery["tag_list"].length > 0 
#             brewery["tag_list"].each do |tag|
#                 Tag.find_or_create_by(name: tag)
#             end
#         end
#     end
# end

kid_friendly = Tag.find_or_create_by(name: "kid friendly", description: "These breweries don't get to crazy and have a friendly atmosphere that's suitable for kids.")
dog_friendly = Tag.find_or_create_by(name: "dog friendly", description:"These breweries don't mind you bringing your furry friend along with you.")
food = Tag.find_or_create_by(name: "has food", description: "These breweries are good for more than just brew, and also have a food menu")
hard = Tag.find_or_create_by(name: "hard to find", description: "These breweries are either a bit of the travelled path, away from public transportation, or otherwis a bit tricky to reach.")
closing = Tag.find_or_create_by(name: "closing?/closed?", description: "These breweries have been marked as potentially closed or closing, and may be removed from the database soon.")

taggy = Tag.find_by(name: "patio")
taggy.update(name: "patio", description: "These breweries have a nice area for outdoor seating.")

BreweryTag.find_or_create_by(brewery_id: 1952, tag: kid_friendly)
BreweryTag.find_or_create_by(brewery_id: 1952, tag: dog_friendly)
BreweryTag.find_or_create_by(brewery_id: 1952, tag: taggy)

BreweryTag.find_or_create_by(brewery_id:1954, tag:taggy)
BreweryTag.find_or_create_by(brewery_id:1954, tag:kid_friendly)

BreweryTag.find_or_create_by(brewery_id: 1963, tag: kid_friendly)
BreweryTag.find_or_create_by(brewery_id: 1963, tag: food)

BreweryTag.find_or_create_by(brewery_id: 131, tag: taggy)
BreweryTag.find_or_create_by(brewery_id: 131, tag: dog_friendly)

BreweryTag.find_or_create_by(brewery_id: 131, tag: taggy)
BreweryTag.find_or_create_by(brewery_id: 131, tag: kid_friendly)

BreweryTag.find_or_create_by(brewery_id: 1962, tag: food)




