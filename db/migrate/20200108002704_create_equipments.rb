class CreateEquipments < ActiveRecord::Migration[6.0]
  def change
    create_table :equipments do |t|
     t.string :name
     t.integer :field_id
     t.integer :user_id
     t.string :year
     t.integer :expense_id

     t.timestamps
    end
  end
end
