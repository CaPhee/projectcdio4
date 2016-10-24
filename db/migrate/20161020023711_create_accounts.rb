class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :username
      t.string :password
      t.string :user_token
      t.integer :id_role
      t.boolean :isactive
      t.boolean :islock
      t.integer :user_id
      t.timestamps
    end
      add_foreign_key :accounts, :users, column: :user_id, primary_key: "id", on_delete: :cascade
  end
end
