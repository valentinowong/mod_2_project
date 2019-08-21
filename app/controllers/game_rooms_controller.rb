class GameRoomsController < ApplicationController
    before_action :set_game_room, only: [:show, :destroy]

    def create 
        @game_room = GameRoom.create(admin_id: session[:user_id], game_id: params["game_room"]["game_id"].to_i)
        redirect_to game_room_path(@game_room)
    end 
    
    def index
        @game_rooms = GameRoom.all
    end

 

    def show
        @current_user = current_user
    end

    def destroy
        @game_room.destroy
        redirect_to root_path
    end

    private

    def set_game_room
        @game_room = GameRoom.find(params[:id])
    end
end
