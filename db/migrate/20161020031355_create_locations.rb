class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.text :address
      t.text :description
      t.boolean :isowner
      t.integer :area_id

      t.timestamps
    end
  end
end
