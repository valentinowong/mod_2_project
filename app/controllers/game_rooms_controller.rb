class GameRoomsController < ApplicationController

    def create 
        @game_room = GameRoom.create(admin_id: session[:user_id], game_id: params["game_room"]["game_id"].to_i)
        byebug
        redirect_to game_room_path(@game_room)
    end 
    
end
