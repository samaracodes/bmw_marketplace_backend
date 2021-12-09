# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Users
sam = User.create(name: "Samara A", email:"sam@#samara.com", password_digest: "sam", birthday: "June 10", location: "New York")
------------------------------------------------------------

# Listings
wheel_listing = Listing.create(title: "HRE 20inch 305 Wheels", description: "Brand new in box HRE 305's. Fitment: 20x9.5 and 20x11. Can meet up in NYC", price: 5000.0, listing_type: "Buy it now", condition: "New", status: "Active", duration: "3 days", user_id: 1)

car_listing = Listing.create(title:"2018 BMW F80 M3", description:"Tastefully modded Santorini Blue M3 up for sale. 15k miles, never tracked or abused.", price: 65000.0, listing_type: "Giveaway", condition:"New", status:"Active", duration: "30 days", user_id: 1)
------------------------------------------------------------

# Category
car = Category.create(name: "Car")
parts = Category.create(name: "Parts")
wheels = Category.create(name: "Wheels/Tires")
accessories = Category.create(name: "Accessories")
tools = Category.create(name: "Tools")
------------------------------------------------------------

# Listing Category
wheel_listing_category = ListingCategory.create(
    listing_id: wheel_listing.id,
    category_id: wheels.id
)

car_listing_category = ListingCategory.create(
    listing_id: car_listing.id,
    category_id: car.id
)
