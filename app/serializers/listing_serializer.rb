class ListingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :price, :condition, :price, :listing_type, :status, :user_id
  
  attribute :listing_categories do |listing|
    listing.categories.map do |category|
      {
        category_id: category.id,
        name: category.name
      }
    end
  end
  
  

end
