class ListingCategorySerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :listing
  belongs_to :category
  
  
end
