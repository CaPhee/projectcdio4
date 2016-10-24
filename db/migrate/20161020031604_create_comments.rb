class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :comment
      t.integer :like
      t.text :like_details
      t.integer :dislike
      t.text :dislike_details
      t.integer :account_id
      t.integer :post_id

      t.timestamps

    end
    add_foreign_key :comments, :accounts, column: :account_id, primary_key: "id", on_delete: :cascade
    add_foreign_key :comments, :posts, column: :post_id, primary_key: "id", on_delete: :cascade
  end
end
