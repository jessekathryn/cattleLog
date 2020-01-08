class CreateFields < ActiveRecord::Migration[6.0]
  def change
    create_table :fields do |t|
      t.string :field_name
      t.integer :acreage
      t.string :crop
      t.integer :coordinates
      t.integer :user_id

      t.timestamps
    end
  end
end
