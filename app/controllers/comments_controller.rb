class CommentsController < ApplicationController
    skip_before_action :authorized
    
    def index
        comments = Comment.all
        render json: comments
    end

    def show
        comment = Comment.find(params[:id])
    end
end
