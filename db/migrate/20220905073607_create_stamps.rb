class CreateStamps < ActiveRecord::Migration[6.1]
  def change
    create_table :stamps do |t|
      t.integer :user_id, null: false
      t.integer :onsen_id, null: false
      t.integer :stamp, null: false

      t.timestamps
    end
  end
end
