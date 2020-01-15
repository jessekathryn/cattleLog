class CreateCows < ActiveRecord::Migration[6.0]
  def change
    create_table :cows do |t|
      t.string :name
      t.integer :tag_number
      t.string :cow_status
      t.integer :age
      t.integer :birthdate
      t.integer :weight
      t.string :health
      t.string :color
      t.integer :user_id
      t.string :notes
      t.integer :field_id

      t.timestamps
    end
  end
end
