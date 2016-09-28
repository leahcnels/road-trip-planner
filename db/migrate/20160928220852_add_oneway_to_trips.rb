class AddOnewayToTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :oneway, :boolean
  end
end
