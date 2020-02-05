class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.string :name
      t.string :date
      t.integer :user_id
      t.string :content
      t.references :reportable, polymorphic: true
      t.timestamps
    end
  end
end
