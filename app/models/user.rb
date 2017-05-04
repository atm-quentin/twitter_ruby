class User < ApplicationRecord
  validates :nom, uniqueness: true, presence: true
	has_many :tweets, dependent: :destroy
end
