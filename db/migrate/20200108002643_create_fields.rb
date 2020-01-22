class CreateFields < ActiveRecord::Migration[6.0]
  def change
    create_table :fields do |t|
      t.string :field_name
      t.integer :acreage
      t.string :crop
      t.string :latitude
      t.string :longitude
      t.integer :user_id
      t.integer :cow_id
      t.integer :expense_id
      t.integer :tool_id

      t.timestamps
    end
  end
end
