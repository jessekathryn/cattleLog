class CreateTools < ActiveRecord::Migration[6.0]
  def change
    create_table :tools do |t|
      t.string :name
      t.integer :user_id
      t.integer :field_id
      t.integer :cow_id
      
      t.timestamps
    end
  end
end
