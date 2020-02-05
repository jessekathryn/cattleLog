class CreateCows < ActiveRecord::Migration[6.0]
  def change
    create_table :cows do |t|
      t.string :name
      t.integer :tag_number
      t.string :status
      t.integer :age
      t.integer :days
      t.date :birthdate
      t.integer :weight
      t.string :health
      t.string :color
      t.integer :user_id
      t.string :notes
      t.string :shots
      t.string :history
      t.string :field_name
      t.boolean "pregnant", default: false 
      t.date :calving_date
      t.string :pregnancy_method

      t.timestamps
    end
  end
end
