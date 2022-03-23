class Api::V1::ListingsController < ApplicationController

    def index
        listings = Listing.all
        render json: ListingSerializer.new(listings)
    end

    def create 
        listing = Listing.create(listing_params)
    end

    def show
        listings = Listing.find_by(params[:id])
    end

    private

    def listing_params
        params.require(:listing).permit(:title, :description, :price, :image, :condition, :status, :listing_type, :duration, :user_id)
    end
end
