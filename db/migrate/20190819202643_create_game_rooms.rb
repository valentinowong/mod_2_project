class CreateGameRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :game_rooms do |t|
      t.integer :admin_id
      t.integer :game_id
      t.boolean :active, :default => false
      t.boolean :complete, :default => false

      t.timestamps
    end
  end
end
