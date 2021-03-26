class CommentsController < ApplicationController
    skip_before_action :authorized
    
    def index
        comments = Comment.all
        render json: comments
    end

    def show
        comment = Comment.find(params[:id])
        render json: comment
    end

    def create
        @comment = Comment.create!(comment_params)
        if @comment.save!
          render json: @comment, status: :created
        else
          render json: { error: 'failed to create comment' }, status: :not_acceptable
        end
    end


    private

    def comment_params
        params.require(:comment).permit(:picture_id, :user_id, :content)
    end

end
