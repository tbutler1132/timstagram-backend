class FollowsController < ApplicationController
    skip_before_action :authorized

    def index
        follows = Follow.all
        render json: follows
    end

    def create
        @follow = Follow.create!(follow_params)
        if @follow.save!
          render json: @follow, status: :created
        else
          render json: { error: 'failed to create follow' }, status: :not_acceptable
        end
    end

    private

    def follow_params
        params.require(:follow).permit(:follower_id, :followee_id)
    end

end
