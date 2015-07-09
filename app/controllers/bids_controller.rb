class BidsController < ApplicationController
	def create
		@user = User.find(1)
		@products = Product.find(params[:product_id])
		@bids = @products.bids.new(bid_params)

		if @bids.save
			redirect_to(user_product_path(@user, @products))
		else
			redirect_to(user_product_path(@user, @products))
		end

	end
	private
	def bid_params
		return params.require(:bid).permit(:amount)
	end
end
