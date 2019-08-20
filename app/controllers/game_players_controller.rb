class GamePlayersController < ApplicationController

    def create 
        @game_player = GamePlayer.create(player_id: session[:user_id], game_room_id: params["game_player"]["game_room_id"].to_i)
        @game_room = GameRoom.find(params["game_player"]["game_room_id"])
        redirect_to game_room_path(@game_room)
    end

    def destroy
        @game_player = GamePlayer.find_by(player_id: session[:user_id])
        @game_player.destroy
        redirect_to game_rooms_path
    end

end