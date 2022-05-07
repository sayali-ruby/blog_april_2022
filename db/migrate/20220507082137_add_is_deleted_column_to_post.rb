class AddIsDeletedColumnToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :is_deleted, :boolean, default: false
  end
end
