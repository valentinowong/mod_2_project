class Mission < ApplicationRecord
    belongs_to :game
    has_many_attached :images
    has_many :photos
end
