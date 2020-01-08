class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.string :expense_name
      t.integer :truck
      t.integer :chemicals
      t.integer :conservation
      t.integer :depreciation
      t.integer :employees
      t.integer :feed
      t.integer :freight
      t.integer :gas
      t.integer :insurance
      t.integer :interest
      t.integer :mortgage
      t.integer :rent
      t.integer :repais
      t.integer :seeds
      t.integer :storage
      t.integer :supplies
      t.integer :taxes
      t.integer :vet
      t.integer :tools
      t.integer :fencing_land
      t.integer :calf
      t.integer :dues
      t.integer :misc_labor
      t.integer :professional_fees
      t.integer :user_id
      t.string :field_name
      t.integer :cow_tag_id

      t.timestamps
    end
  end
end
