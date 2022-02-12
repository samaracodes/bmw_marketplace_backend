class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :birthday, :location
  has_many :listings, serializer: ListingSerializer  

end
