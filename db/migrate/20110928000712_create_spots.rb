class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :title
      t.string :name
      t.decimal :amount 
      t.text :notes
      t.date :payback_date

      t.timestamps
    end
  end
end
