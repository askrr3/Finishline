class UsersController < ApplicationController
  def index
  end

  def register
  	user = User.new(first_name:params[:first_name], last_name:params[:last_name], email:params[:email], password:params[:password])
  	if user.valid?
  		user.save
      puts "="*100
      puts user.first_name
      session[:user_id] = user.id
  		redirect_to '/products/index'
  	else
  		redirect_to '/', :notice => user.errors.full_messages
  	end

  end

  def login
  	if !params[:email].blank? && !params[:password].blank?
  		user = User.find_by_email(params[:email])
	  	if user
	  		if  user.authenticate(params[:password])
	  			session[:user_id] = user.id
	  			redirect_to '/products/index'
	  		# else
	  		# 	redirect_to '/', :alert =>  "email password combo dont match"
	  		end
	  	else
	  		redirect_to '/', :alert =>  "email doesnt exist"
	  	end
	  else
	  	redirect_to '/', :alert =>  "email and password cant be blank"
	  end
  end

end
