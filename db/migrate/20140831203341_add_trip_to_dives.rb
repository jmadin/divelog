class AddTripToDives < ActiveRecord::Migration
  def change
    add_reference :dives, :trip, index: true
  end
end
