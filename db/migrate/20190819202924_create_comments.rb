class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :user_id
      t.integer :game_room_id
      t.datetime :datetime

      t.timestamps
    end
  end
end
