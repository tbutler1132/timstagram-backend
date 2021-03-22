class FollowsController < ApplicationController
    skip_before_action :authorized

    def index
        follows = Follow.all
        render json: follows
    end

end
