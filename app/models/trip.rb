class Trip < ActiveRecord::Base

  has_many :dives
  default_scope -> { order('start_date desc') }

end
