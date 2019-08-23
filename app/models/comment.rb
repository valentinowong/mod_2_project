class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :game_room
    belongs_to :mission
    has_one_attached :photo

    def mission_name
        mission.name
    end

    def mission_content
        mission.content
    end

    def user_name
        user.name
    end

    def display_datetime
        datetime.in_time_zone("Eastern Time (US & Canada)").strftime("%A, %b %-d %Y -%l:%M%p")
    end

    def game_room_game_name
        game_room.game.name
    end

    def game_room_admin_name
        game_room.admin.name
    end
end
