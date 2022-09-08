class CreateOnsenInformations < ActiveRecord::Migration[6.1]
  def change
    create_table :onsen_informations do |t|
      
      t.integer :onsen_id, null: false
      t.integer :information_id, null: false

      t.timestamps
    end
  end
end
