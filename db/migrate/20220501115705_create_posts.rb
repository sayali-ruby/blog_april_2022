class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :post_name
      t.integer :user_id , index: true

      t.timestamps
    end
  end
end
