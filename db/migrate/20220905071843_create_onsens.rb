class CreateOnsens < ActiveRecord::Migration[6.1]
  def change
    create_table :onsens do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :opening_hours, null: false
      t.string :price, null:false
      t.string :spring_quality

      t.timestamps
    end
  end
end
