class AddUdoToTrips < ActiveRecord::Migration
  def change
    add_reference :trips, :trip, index: true
    add_column :trips, :udo, :integer
    add_column :trips, :signed, :boolean
  end
end
