# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Users
sam = User.create(name: "Samara A", email:"sam@samara.com", password_digest: "sam", birthday: "June 10", location: "New York")


# Listings
wheel_listing = Listing.create(title: "HRE 20inch 305 Wheels", description: "Brand new in box HRE 305's. Fitment: 20x9.5 and 20x11. Can meet up in NYC", image: "https://live.staticflickr.com/65535/51868984404_89599fbf93_c.jpg",price: 5000.0, listing_type: "Buy it now", condition: "New", status: "Active", duration: "3 days", user_id: 1)

cl_1 = Listing.create(title: "2018 BMW F80 M3 Competition Pkg - Imola Red", description: "Tastefully modded M3 up for sale. 14,721 miles, never tracked or abused.", image: "https://live.staticflickr.com/65535/51868744658_70ca103f78_c.jpg", price: 72000.0, listing_type: "Buy It Now", condition:"Used", status:"Active", duration: "30 days", user_id: 1)

cl_2 = Listing.create(title: "2019 BMW F80 M3 - Sapphire Black", description: "Selling my F80, moving onto something else. Car comes stock, all aftermarket parts have been parted out, has 34,564 miles. Comes with all service records, and has 5 years/60k miles warranty remaining.", image: "https://live.staticflickr.com/65535/51868663331_b97eb49bf5_c.jpg", price: 73550.0, listing_type: "Buy It Now", condition:"Used", status:"Active", duration: "30 days", user_id: 1)

cl_3 = Listing.create(title: "2015 BMW F80 M3 Comp - Champagne Quartz", description: "BMW Individual Champagne Quartz, fully loaded specs, 36k miles,ceramic coated, car has been tuned, lowered on KW V3 Spring kit, also have all service records. Crankhub has been fixed.", image: "https://live.staticflickr.com/65535/51868663361_e8ac68d951_c.jpg", price: 300.0, listing_type: "Giveaway", condition:"Used", status:"Active", duration: "60 days", user_id: 1)

# Category
car = Category.create(name: "Car")
parts = Category.create(name: "Parts")
wheels = Category.create(name: "Wheels/Tires")
accessories = Category.create(name: "Accessories")
tools = Category.create(name: "Tools")


# Listing Category
wheel_listing_category = ListingCategory.create(
    listing_id: wheel_listing.id,
    category_id: wheels.id
)

car_listing_category = ListingCategory.create(
    listing_id: cl_1.id,
    category_id: car.id
)
