class CreateFollows < ActiveRecord::Migration[5.0]
  def change
    create_table :follows do |t|
      t.integer :id_user
      t.integer :id_followed
      t.integer :follow_type

      t.timestamps
    end
  end
end
