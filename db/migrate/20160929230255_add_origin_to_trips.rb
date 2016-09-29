class AddOriginToTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :origin, :string
    add_column :trips, :latitude, :float
    add_column :trips, :longitude, :float

  end
end
