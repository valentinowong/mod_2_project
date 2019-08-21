class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :game_room
    belongs_to :mission
    has_one_attached :photo

    def mission_name
        mission.name
    end

    def user_name
        user.name
    end
end
