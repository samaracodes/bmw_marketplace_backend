class ListingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :price, :condition, :price, :listing_type, :status, :user_id
  
  belongs_to :user
  has_many :listing_categories
  has_many :categories, through: :listing_categories

  
  

end
