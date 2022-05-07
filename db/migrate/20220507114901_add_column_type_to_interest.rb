class AddColumnTypeToInterest < ActiveRecord::Migration[6.0]
  def change
    add_column :interests, :interest_type, :string
  end
end
