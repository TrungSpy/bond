class AddLatlonToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :target_lat, :float
    add_column :rooms, :target_lon, :float
  end
end
