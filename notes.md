Users can..
---------------------------------------
- Create, read, update, delete a listing
- Buy it now
- Bid on an auction
- Private Message another user about an item


Associations
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


Attributes 
---------------------------------------
User:
t.string :name
t.string :email
t.string :password_disgest
t.string :dob (Maybe?)


Listing:
t.string :title
t.string :description
t.string :conditon
t.float :price
t.integer :user_id


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






