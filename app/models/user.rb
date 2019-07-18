class User < ApplicationRecord
  has_secure_password
  has_many :parking_spots
end
