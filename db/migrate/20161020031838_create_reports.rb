class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :type
      t.text :description
      t.boolean :ischeck
      t.boolean :iscritical
      t.integer :account_report
      t.integer :account_reported
      t.timestamps
    end

    add_foreign_key :reports, :accounts, column: :account_report, primary_key: "id", on_delete: :cascade
    add_foreign_key :reports, :accounts, column: :account_reported, primary_key: "id", on_delete: :cascade
  end
end
