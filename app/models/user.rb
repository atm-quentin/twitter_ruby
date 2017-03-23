class User < ApplicationRecord
  validates :nom, uniqueness: true
	has_many :tweets
end
