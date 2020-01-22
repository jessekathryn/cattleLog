class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :cows
      t.string :fields
      t.string :expenses
      t.string :tools
      t.string :reports
      t.boolean "admin", default: false 

      t.timestamps
    end
  end
end
