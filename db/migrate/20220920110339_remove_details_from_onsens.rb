class RemoveDetailsFromOnsens < ActiveRecord::Migration[6.1]
  def change
    remove_column :onsens, :latitude, :float
    remove_column :onsens, :longitude, :float
  end
end
