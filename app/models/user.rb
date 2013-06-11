class User < ActiveRecord::Base
  attr_accessible :admin, :email, :loyalty_points, :name, :password, :password_confirmation
  has_secure_password

  validates :email, uniqueness: true, presence: true
  validates :password, :presence =>true, :on => :create

  #validates_confirmation_of :password
  before_save { email.downcase! }

  has_many :reservations

end
