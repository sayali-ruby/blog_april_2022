class CreateTableUserInterest < ActiveRecord::Migration[6.0]
  def change
    create_table :table_user_interests do |t|
      t.references :user, null: false, foreign_key: true
      t.references :interest, null: false, foreign_key: true
    end
  end
end
