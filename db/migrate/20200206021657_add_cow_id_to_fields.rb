class AddCowIdToFields < ActiveRecord::Migration[6.0]
  def change
    add_column :fields, :cow_id, :integer
  end
end
