class RenameColumnInterestTypeToInterestName < ActiveRecord::Migration[6.0]
  def change
    rename_column :interests, :interest_type, :interest_name
  end
end
