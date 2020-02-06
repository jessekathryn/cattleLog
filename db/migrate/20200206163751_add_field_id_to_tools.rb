class AddFieldIdToTools < ActiveRecord::Migration[6.0]
  def change
    add_column :tools, :field_id, :integer
  end
end
