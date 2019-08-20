class GameRoomsController < ApplicationController
    before_action :set_game_room, only: [:show, :destroy, :activate, :deactivate]

    def create 
        @game_room = GameRoom.create(admin_id: session[:user_id], game_id: params["game_room"]["game_id"].to_i)
        redirect_to game_room_path(@game_room)
    end 
    
    def index
        @game_rooms = GameRoom.all
    end

    def show
        @current_user = current_user
        @current_game_player = GamePlayer.find_by(player_id: @current_user.id)
        @game_player = GamePlayer.new
    end

    def destroy
        @game_room.destroy
        redirect_to root_path
    end

    def activate
        @game_room.activate
        redirect_to game_room_path(@game_room)
    end

    def deactivate
        @game_room.deactivate
        redirect_to game_room_path(@game_room)
    end

    private

    def set_game_room
        @game_room = GameRoom.find(params[:id])
    end
end
