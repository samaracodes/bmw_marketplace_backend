class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name

 
  has_many :listing_categories, through: :categories
end

