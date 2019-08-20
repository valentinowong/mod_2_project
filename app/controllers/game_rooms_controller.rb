class GameRoomsController < ApplicationController
    before_action :set_game_room, only: [:show, :destroy]

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