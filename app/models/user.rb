class User < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }
	validates :surname, presence: true, length: { maximum: 50 }
	validates :group, presence: true

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
end
