class CreateDives < ActiveRecord::Migration
  def change
    create_table :dives do |t|
      t.string :organistion
      t.text :category_description
      t.date :dive_date
      t.integer :dive_number
      t.string :site_location
      t.decimal :latitude
      t.decimal :longitude
      t.string :vessel
      t.string :tide
      t.string :weather
      t.decimal :air_temperature
      t.decimal :water_temperature
      t.string :wind
      t.string :current
      t.decimal :visiability
      t.string :conditions
      t.string :dive_type
      t.string :breathing_medium
      t.text :environment
      t.text :equipment
      t.text :tasks
      t.string :role
      t.integer :air_in
      t.integer :air_out
      t.time :time_in
      t.time :time_out
      t.string :surface_swim
      t.integer :wet_time
      t.integer :max_depth
      t.integer :bottom_time
      t.integer :no_decompression_limit
      t.integer :surface_interval
      t.decimal :repeitive_factor
      t.integer :effective_bottom_time
      t.string :repetitive_group
      t.string :safety_stop
      t.references :user, index: true
      t.boolean :signed
      t.integer :dive_coordinator
      t.text :comments

      t.timestamps
    end
  end
end
