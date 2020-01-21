class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.string :name
      t.string :date
      t.integer :user_id
      t.integer :field_id
      t.integer :cow_id
      t.integer :expense_id

      t.timestamps
    end
  end
end
