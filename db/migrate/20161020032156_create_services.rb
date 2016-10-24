class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :name
      t.integer :location_id

      t.timestamps
    end

    add_foreign_key :services, :locations, column: :location_id, primary_key: "id", on_delete: :cascade
  end
end
