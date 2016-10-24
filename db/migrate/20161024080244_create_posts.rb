class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :location_id
      t.integer :views
      t.integer :like
      t.text :like_details
      t.integer :dislike
      t.text :dislike_details

      t.timestamps
    end

    add_foreign_key :posts, :users, column: :user_id, primary_key: "id", on_delete: :cascade
    add_foreign_key :posts, :locations, column: :location_id, primary_key: "id", on_delete: :cascade
  end
end
