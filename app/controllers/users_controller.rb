class UsersController < ApplicationController
  def create
    user = User.new(user_params)
  if user.save
    session[:user_id] = user.id 
    redirect_to "/logged"
  else
    flash[:errors] = user.errors.full_messages
    redirect_to :back
  end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    User.find(params[:id]).update(user_params)
    redirect_to "/dash"
  end

  def show

  end

  def destroy
    User.find(params[:id]).destroy
    session[:user_id] = nil 
    redirect_to "/dash"
  end

private
  def user_params
    params.require(:user).permit(:name, :interest, :email, :password)
  end
end
