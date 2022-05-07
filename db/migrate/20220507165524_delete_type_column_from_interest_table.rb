class DeleteTypeColumnFromInterestTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :interests, :type
  end
end
