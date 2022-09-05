class CreateOnsens < ActiveRecord::Migration[6.1]
  def change
    create_table :onsens do |t|
      t.integer :information_id, null: false
      t.string :name, null: false
      t.string :adress, null: false
      t.string :opening_hours, null: false
      t.integer :price, null:false
      t.string :spring_quality

      t.timestamps
    end
  end
end
