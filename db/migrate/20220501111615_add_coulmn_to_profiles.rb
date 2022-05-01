class AddCoulmnToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :user_id, :integer, index: true
  end
end
