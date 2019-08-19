class CreateMissions < ActiveRecord::Migration[5.2]
  def change
    create_table :missions do |t|
      t.string :name
      t.string :content
      t.integer :game_id

      t.timestamps
    end
  end
end
