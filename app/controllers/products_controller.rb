class ProductsController < ApplicationController
  def index
    @users = User.all
    @user = User.find(session[:user_id])
    @product = Product.where(seller: session[:user_id], buyer:nil)
    @purchases = Product.where(buyer:session[:user_id])
    @add_purchases = Product.where(buyer:session[:user_id]).pluck(:amount)

    # if session user and buyer are in the same row
    @sales = Product.all
    @add_sales = []
    @sales.each do |sale|
      if session[:user_id] == sale.seller and sale.buyer != nil
        @add_sales.push(sale.amount)
      end
    end
  end

  def buy

  end

  def remove
    Product.find_by(id: params[:id]).destroy
    redirect_to '/products/index'
  end

  def sell
    Product.create(product:params[:name], amount:params[:amount], seller:session[:user_id])
    redirect_to '/products/index'
  end
#######takes you to the buy.html page
  # def show_all
  #   @products = Product.all
  #   puts '=='*1000
  #   puts @products.inspect
  #   puts '=='*1000
  #   redirect_to '/products/remove'
  # end
#######
  # def all_buy
  #   @products = Product.all
  #   redirect_to '/products/buy'
  # end

  def logout
    reset_session
    redirect_to '/'
  end
end
