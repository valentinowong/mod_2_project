class User < ApplicationRecord
    has_many :comments
    has_many :admin_game_rooms, foreign_key: "admin_id", class_name: "GameRoom"
    has_many :game_players, foreign_key: "player_id", class_name: "GamePlayer"
    has_many :game_rooms, through: :game_players

    has_secure_password

    validates :name, presence: true
    
    # user#approved_comments - Returns an array of all of this *player's* comments that have been approved by an admin
    def approved_comments
        comments.select {|comment| comment.approved == true }
    end

    # user#game_room_approved_comments - Returns an array of all this *player's* approved comments for a specific game room
    def game_room_approved_comments(game_room)
        array = approved_comments.select {|comment| comment.game_room == game_room }
        array.sort_by {|comment| comment.datetime }
    end

    # user#game_room_completed_missions - Returns an array of all this *player's* completed missions for a specific game room
    def game_room_completed_missions(game_room)
        game_room_approved_comments(game_room).map {|comment| comment.mission }.uniq
    end

    # user#completed_all_game_room_missions? - Returns true if a player has completed all the missions for a specific game room
    def completed_all_game_room_missions?(game_room)
        game_room.missions.all? {|mission| game_room_completed_missions(game_room).include?(mission)}
    end

    # user#datetime_completed_all_game_room_missions - Returns the datetime that a player completed all the missions for a specific game room
    def datetime_completed_all_game_room_missions(game_room)
        if completed_all_game_room_missions?(game_room)
            times_completed_missions = []
            game_room.missions.each do |mission|
                times_completed_missions << game_room_approved_comments(game_room).find {|comment|comment.mission_id == mission.id}.datetime
            end
            times_completed_missions.max
        end
    end

end