class GameRoom < ApplicationRecord
    belongs_to :game
    belongs_to :admin, class_name: "User", foreign_key: "admin_id"
    has_many :game_players
    has_many :players, through: :game_players
    has_many :missions, through: :game
    has_many :comments

    def game_name
        game.name
    end

    def game_description
        game.description
    end

    def admin_name
        admin.name
    end

    def activate
        self.update(active: true)
    end

    def deactivate
        self.update(active: false)
    end

    def mark_complete
        self.update(complete: true)
    end

    def mark_uncomplete
        self.update(complete: false)
    end

    # game_room#players_completed_missions_hash - Returns a hash with:
    # - keys = players in this game room
    # - values = an array of the missions that player completed in this game room.
    
    def players_completed_missions_hash
        hash = {}
        players.each do |player|
            hash[player] = player.game_room_completed_missions(self)
        end
        hash
    end

    # game_room#players_who_completed_all_missions - Returns an array with all the players who've completed all the missions
    def players_who_completed_all_missions
        array = []
        players_completed_missions_hash.each do |player, completed_missions|
            if missions.all? {|mission| completed_missions.include?(mission)}
                array << player
            end
        end
        array
    end

    # game_room#winner - Returns the player who completed all this game room's missions first
    def winner
        players_who_completed_all_missions.min_by {|player| player.datetime_completed_all_game_room_missions(self)}
    end

    # game_room#winner - Returns the player's name who completed all this game room's missions first
    def winner_name
        winner.name
    end

    def comments_sorted_oldest_first
        comments.sort_by {|comment| comment.datetime}
    end

    def comments_sorted_most_recent_first
        comments_sorted_oldest_first.reverse
    end

    def game_room_unreviewed_comments
        comments_sorted_oldest_first.select {|comment| comment.approved.nil?}
    end

    def display_created_at
        created_at.in_time_zone("Eastern Time (US & Canada)").strftime("%A, %b %-d %Y -%l:%M%p")
    end

end
