class LikesController < ApplicationController
    skip_before_action :authorized
    
    def index
        likes = Like.all
        render json: likes
    end

    def show
        like = Like.find(params[:id])
    end

    def create
        @like = Like.create!(like_params)
        if @like.save!
          render json: @like, status: :created
        else
          render json: { error: 'failed to create like' }, status: :not_acceptable
        end
    end

    def destroy
        like = Like.find(params[:id])
    
        like.destroy
    
        render json: {}
    end

    private 

    def like_params
        params.require(:like).permit(:user_id, :picture_id)
    end

end
