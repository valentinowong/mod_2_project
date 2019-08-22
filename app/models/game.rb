class Game < ApplicationRecord
    has_many :missions
    has_many :game_rooms

    def missions_attributes=(mission_attributes)
    mission_attributes.values.each do |mission_attribute|
      
      if mission_attribute.values.all? { |attribute| !attribute.empty? }
        mission = Mission.create(mission_attribute)
        self.missions << mission
      end 
    end
  end
end
