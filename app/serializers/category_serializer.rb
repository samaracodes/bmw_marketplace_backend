class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name

  has_many :listing_categories
  has_many :listings, through: :listing_categories
end
