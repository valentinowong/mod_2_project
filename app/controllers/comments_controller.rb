class CommentsController < ApplicationController

    def create
        @comment = Comment.create(comment_params)
        @comment.update(datetime: Time.now)
        redirect_to game_room_path(@comment.game_room)
    end

    def update 
        @comment = Comment.find(params[:id])
        @comment.update(comment_params)
        redirect_back(fallback_location: root_path)
    end 
    
    private

    def comment_params
        params.require(:comment).permit(:content, :user_id, :game_room_id, :datetime, :mission_id, :approved, :photo)
    end

end