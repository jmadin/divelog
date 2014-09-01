class AddDiveToPhotos < ActiveRecord::Migration
  def change
    add_reference :photos, :dive, index: true
  end
end
