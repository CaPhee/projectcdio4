class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.date :birthday
      t.boolean :sex
      t.text :address
      t.string :phone
      t.string :email
      t.integer :account_id
      t.timestamps
    end

  end
end
