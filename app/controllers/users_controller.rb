class UsersController < ApplicationController
    skip_before_action :authorized

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def index
        users = User.all
        render json: users
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
          render json: { user: UserSerializer.new(@user) }, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def edit 
      @user = User.find(params[:id])
      
      render json: @user
    end

    def update
      user = User.find(params[:id])
      user.update(user_params)
  
      render json: user
    end 

    private
    
    def user_params
      params.require(:user).permit(:username, :password, :bio, :profile_photo_url)
    end

end
