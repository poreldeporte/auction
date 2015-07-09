class Bid < ActiveRecord::Base
	belongs_to :product
	belongs_to :user

	validates :amount, numericality: true
end
