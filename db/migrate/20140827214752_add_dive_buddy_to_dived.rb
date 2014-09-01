class AddDiveBuddyToDived < ActiveRecord::Migration
  def change
    add_column :dives, :dive_buddy, :integer
  end
end
