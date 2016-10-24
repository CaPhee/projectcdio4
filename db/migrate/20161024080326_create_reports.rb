class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.integer :user_id
      t.text :description
      t.integer :report_id
      t.string :report_id_type
      t.boolean :checked
      t.boolean :is_critical

      t.timestamps
    end
  end
end
