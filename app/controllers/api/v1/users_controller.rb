class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: UserSerializer.new(users)
    end


    def create
        @user = User.new(user_params)
        
        if @user.save
            session[:user_id] = @user.id
            render json: { user: @user, status: :created}
        else 
            render json: {error: 'Something went wrong. Please try again.'}
        end
    end

    def show
        user = User.find_by_id(params[:id])
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :location, :birthday)
    end

    def set_user
        @user = User.find_by_id(params[:id])
    end
end
