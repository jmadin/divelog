class Dive < ActiveRecord::Base
  belongs_to :user
  belongs_to :trip
  has_many :photos, :dependent => :destroy

  default_scope -> { order('dive_date desc, dive_number asc') }

end
