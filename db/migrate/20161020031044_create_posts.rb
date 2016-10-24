class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :views
      t.integer :like
      t.text :like_details
      t.integer :dislike
      t.text :dislike_details
      t.integer :account_id
      t.timestamps
    end

    add_foreign_key :posts, :accounts, column: :account_id, primary_key: "id", on_delete: :cascade
  end
end
