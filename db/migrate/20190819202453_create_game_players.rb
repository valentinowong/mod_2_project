class CreateGamePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :game_players do |t|
      t.integer :game_room_id
      t.integer :player_id

      t.timestamps
    end
  end
end
