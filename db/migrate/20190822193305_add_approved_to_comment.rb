class AddApprovedToComment < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :approved, :boolean
  end
end
