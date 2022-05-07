class RenameColumnPostNameToTitle < ActiveRecord::Migration[6.0]
  def change
    rename_column :posts, :post_name, :title
    add_column :posts, :description, :text
  end
end
