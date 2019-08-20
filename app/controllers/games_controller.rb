class GamesController < ApplicationController
    def index 
        #in page there will be option to select a game of make a new game-> for admin
        @games = Game.all

    end 

    def show
        @game = Game.find(params[:id])
        @game_room = GameRoom.new
    end 

    def new 
        #will be able to direct from 
        @game = Game.new
        @game.missions.build(game_id: @game.id)
    end 

    def create
        @game = Game.create(params_)
        redirect_to game_path(@game)
    end 

    private 

    def params_
        params.require(:game).permit(
        :name,
        :description,
        missions_attributes: [
        :name,
        :content,
        :game_id
        ]
        )
    end 


end
