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

adam = User.last
brew = Brewery.first

bq = Brewqueue.create(user: adam, brewery: brew)

rev = Review.create(content:"this is a tasty brew",rating:5,reviewer: adam, reviewee: brew)
