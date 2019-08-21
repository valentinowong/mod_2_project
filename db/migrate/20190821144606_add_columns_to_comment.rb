class AddColumnsToComment < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :mission_id, :integer
    add_column :comments, :approved, :boolean, default: false
  end
end
