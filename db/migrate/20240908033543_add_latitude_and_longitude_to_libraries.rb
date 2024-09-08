class AddLatitudeAndLongitudeToLibraries < ActiveRecord::Migration[7.0]
  def change
    add_column :libraries, :latitude, :float
    add_column :libraries, :longitude, :float
  end
end
