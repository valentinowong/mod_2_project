class RemoveApprovedFromComment < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :approved, :boolean
  end
end
