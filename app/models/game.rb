class Game < ApplicationRecord
    has_many :missions
    has_many :game_rooms
    accepts_nested_attributes_for :missions
end
