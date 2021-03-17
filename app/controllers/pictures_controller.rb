class PicturesController < ApplicationController
    skip_before_action :authorized

    def index
        pictures = Picture.all
        render json: pictures
    end

    def show
        picture = Picture.find(params[:id])
    end

    def create
        @picture = Picture.create!(picture_params)
        if @picture.save!
          render json: @picture, status: :created
        else
          render json: { error: 'failed to create picture' }, status: :not_acceptable
        end
    end

    def destroy
        picture = Picture.find(params[:id])
        picture.destroy
        render json: {}
    end

    private 

    def picture_params
        params.require(:picture).permit(:photo_url, :Caption, :user_id)
    end

end
