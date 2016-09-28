class ShowAllController < ApplicationController
  def index
    @products = Product.where(buyer:nil)
    @users = User.all
  end

  def buy
    Product.find_by(id: params[:id]).update(buyer: session[:user_id])
    redirect_to '/products/index'
  end
end
