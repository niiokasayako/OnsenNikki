class CreateStamps < ActiveRecord::Migration[6.1]
  def change
    create_table :stamps do |t|
      t.integer :user_id
      t.integer :onsen_id

      t.timestamps
    end
  end
end
