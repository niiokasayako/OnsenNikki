class AddDetailsToOnsens < ActiveRecord::Migration[6.1]
  def change
    add_column :onsens, :latitude, :float
    add_column :onsens, :longitude, :float
  end
end
