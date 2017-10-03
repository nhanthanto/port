class LoginController < ApplicationController
  def index
  end
  def create
  	user = User.find_by(email: params[:email])
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to "/logged"
  	else
  		flash[:errors] = ["Invalid Combination"]
  		redirect_to "/dash"
  end
  def destroy
  	if session[:user_id]
  		session[:user_id] = nil
  	end
  	redirect_to "/dash"
  end
end
  def new
  end
  def logged
  	
  end
end
