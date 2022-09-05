class CreateInformation < ActiveRecord::Migration[6.1]
  def change
    create_table :information do |t|
      t.string :information, null: false

      t.timestamps
    end
  end
end
