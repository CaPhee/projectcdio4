class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :review
      t.float :rate
      t.integer :post_id

      t.timestamps
    end
    add_foreign_key :reviews, :posts, column: :post_id, primary_key: "id", on_delete: :cascade
  end
end
