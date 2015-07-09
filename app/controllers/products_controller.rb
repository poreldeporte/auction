class ProductsController < ApplicationController
	 def index
	 	@user = User.find(params[:user_id])
	 	@products = @user.products

	 	render('index')
	 end 
	 def new
	 	@user = User.find(params[:user_id])
	 	@products = @user.products.new

	 	render('new')
	 end
	 def create
	 	@user = User.find(params[:user_id])
	 	@products = @user.products.new(product_params)

	 	if @products.save
	 		redirect_to(user_products_path)
	 	else
	 		render('new')
	 	end 
	 end
	 def show
	 	@user = User.find(params[:user_id])
	 	@products = @user.products.find(params[:id])
	 	@bids = Bid.new
	 	@highest_bid = @products.bids.maximum("amount")

	 	render('product_details')
	 end
	 def edit
	 	@user = User.find(params[:user_id])
	 	@products = @user.products.find(params[:id])

	 	render('edit')
	 end
	 def update
	 	@user = User.find(params[:user_id])
	 	@products = @user.products.find(params[:id])

	 	if @products.update_attributes(product_params)
	 		redirect_to(user_products_path)
	 	else
	 		render('edit')
	 	end
	 end
	 def destroy
	 	@user = User.find(params[:user_id])
	 	@products = @user.products.find(params[:id])

	 	if @products.destroy
	 		redirect_to(user_products_path)
	 	else
	 		render('index')
	 	end
	 end
	 private
	 def product_params
	 	return params.require(:product).permit(:title, :description, :deadline)
	 end
end

