class ConsumersController < ApplicationController
  def create
    consumer = Consumer.new(consumer_params)
  if consumer.save
    session[:consumer_id] = consumer.id 
    redirect_to "/ecommerce"
  else
    flash[:errors] = consumer.errors.full_messages
    redirect_to :back
  end
  end

  def edit
    @consumer = Consumer.find(params[:id])
  end

  def update
    @consumer = Consumer.find(params[:id])
    Consumer.find(params[:id]).update(consumer_params)
    redirect_to "/dash"
  end

  def show

  end

  def destroy
    Consumer.find(params[:id]).destroy
    session[:consumer_id] = nil 
    redirect_to "/dash"
  end

private
  def consumer_params
    params.require(:consumer).permit(:first, :last, :email, :password, :address)
  end
end
