class User < ActiveRecord::Base
	has_many :products
	has_many :bids

	validates :name, presence: true
	validates :email, uniqueness: true
	validates :email, presence: true
end
