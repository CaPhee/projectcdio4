class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :location_name
      t.string :address
      t.integer :area_id
      t.text :description
      t.text :details
      t.integer :user_id
      t.integer :owner_id

      t.timestamps
    end

    add_foreign_key :locations, :areas, column: :area_id, primary_key: "id", on_delete: :cascade
  end
end
