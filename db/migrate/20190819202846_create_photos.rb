class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :url
      t.integer :user_id
      t.integer :mission_id
      t.datetime :datetime
      t.boolean :valid, :default => false

      t.timestamps
    end
  end
end
