class RenameColumnInterestNameToName < ActiveRecord::Migration[6.0]
  def change
    rename_column :interests, :interest_name, :name
  end
end
