class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :protected_token
      t.references :role, foreign_key: true
      t.boolean :is_active
      t.boolean :is_lock
      t.string :name
      t.date :birthday
      t.string :sex
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
