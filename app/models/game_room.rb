class GameRoom < ApplicationRecord
    belongs_to :game
    belongs_to :admin, class_name: "User", foreign_key: "admin_id"
    has_many :game_players
    has_many :players, through: :game_players
    has_many :missions, through: :game
    has_many_attached :images

    def game_name
        game.name
    end

    def game_description
        game.description
    end

    def admin_name
        admin.name
    end
end
