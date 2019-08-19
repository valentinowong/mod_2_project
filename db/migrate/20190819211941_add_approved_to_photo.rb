class AddApprovedToPhoto < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :approved, :boolean, :default => false
  end
end
