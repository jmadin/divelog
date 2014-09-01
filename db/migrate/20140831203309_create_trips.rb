class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :trip_name
      t.string :trip_organistion
      t.string :trip_category
      t.date :start_date
      t.date :end_date
      t.text :description

      t.timestamps
    end
  end
end
