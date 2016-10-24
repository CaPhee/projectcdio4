class CreateFollows < ActiveRecord::Migration[5.0]
  def change
    create_table :follows do |t|
      t.integer :account_id
      t.integer :post_id

      t.timestamps
    end

    add_foreign_key :follows, :accounts, column: :account_id, primary_key: "id", on_delete: :cascade
    add_foreign_key :follows, :posts, column: :post_id, primary_key: "id", on_delete: :cascade
  end
end[lmn  ]