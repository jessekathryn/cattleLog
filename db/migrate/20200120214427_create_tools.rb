class CreateTools < ActiveRecord::Migration[6.0]
  def change
    create_table :tools do |t|
      t.string :name
      t.string :price
      t.integer :user_id
      t.date :tune_up
      t.integer :fuel
      t.timestamps
    end
  end
end
