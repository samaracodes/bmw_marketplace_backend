# Users can..
---------------------------------------
- Create, read, update, delete a listing
- Buy it now
- Bid on an auction
- Host giveaways 
- Make an offer
- Private Message another user about an item



# Associations
---------------------------------------
- Users has many :listings, :purchases, :messages (sent_messages\\received_messages)

- Listing belongs to :user
- Listing belongs to :category
- Listing has many :listingcategories through :categories
(Join Table)

- Purchases belong to :user (:seller\\:buyer)

- Category has many :listings 
- Category has many :listingcategories through listings

- ListingCategory belongs to :category
- ListingCategory belongs to :listing
(Join Table)

- Messages belongs to :sender/:receiver OR :seller\\:buyer

# Attributes 
---------------------------------------
User:
t.string :name
t.string :email
t.string :password_disgest
t.string :dob (Maybe?)
t.string :location


Listing:
t.string :title
t.string :description
t.string :conditon
t.float :price
t.integer :user_id
t.string :type
t.string :status
??? duration ???


Category:
t.string :name


ListingCategory:
t.integer :category_id
t.integer :listing_id


Messages:
t.string :text
t.integer :user_id (seller_id, buyer_id)


Purchases: 
t.integer :user_id (seller_id, buyer_id)
t.integer :listing_id

# Task List
-----------------------------------
[DONE] Create API controllers/serializers

[DONE] Implement Fast JSON

[DONE] Create models

[DONE] Create database

[pending completion] Seed data

# App Features To Build 
------------------------------------
[ ] Homepage includes amount of sold listings to date

[ ] User signup/login

[ ] Facebook/Google Omniauth

[ ] User reset password

[ ] User seller profile
    - Active listings
    
[ ] User Control Panel (private)
    - Active listings
    - Sold listings
    - Saved listings
    - Bids/Offers
    - Purchase History


[ ] Buy now/Auction/Host a giveaway 

[ ] Marketplace Listing Index page with: 
    - search bar
    - filter section:
        - car chassis 
        - listing category
        - shipped/local sale
        - listing type: 
            - auction
            - buy now
            - make offer
            - giveaway 
        - active/sold listings
        - listing location (nearest// might need a location api for this feature)
    - user's saved listings
    - price 
    - condition

[ ] Listing page

[ ] Private Messages Index

[ ] Private Message

[ ] About page

[ ] Contact page

[ ] 




