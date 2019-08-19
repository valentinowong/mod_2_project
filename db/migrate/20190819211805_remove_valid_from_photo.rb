class RemoveValidFromPhoto < ActiveRecord::Migration[5.2]
  def change
    remove_column :photos, :valid, :boolean
  end
end
