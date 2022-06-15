class CreateTableUserInterest < ActiveRecord::Migration[6.0]
  def change
    # table name should be alphabatically sorted
    # not user but users
    # wrong table name table_interests_users 
    # it should be interests_users
    create_table :interests_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :interest, null: false, foreign_key: true
    end
  end
end
