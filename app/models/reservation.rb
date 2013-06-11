class Reservation < ActiveRecord::Base
  attr_accessible :datetime, :party_size, :user_id

 belongs_to :user
end
