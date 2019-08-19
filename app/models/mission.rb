class Mission < ApplicationRecord
    belongs_to :game
    has_many :photos
end
