class AddToolIdToFields < ActiveRecord::Migration[6.0]
  def change
    add_column :fields, :tool_id, :integer
  end
end
