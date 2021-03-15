class LikesController < ApplicationController
    def index
        likes = Like.all
        render json: likes
    end

    def show
        like = Like.find(params[:id])
    end
end
