class CreateFields < ActiveRecord::Migration[6.0]
  def change
    create_table :fields do |t|
      t.string :name
      t.string :description
      t.integer :acreage
      t.string :crop
      t.float :moisture
      t.string :latitude
      t.string :longitude
      t.integer :bushel 
      t.integer :crop_weight_lb
      t.timestamps
    end
  end
end
