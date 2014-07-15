class OrdersController < ApplicationController
  before_action :get_user
  
  def index
    @orders = @user.orders
  end

  def show
    head 200
  end

  private
  def get_user
    @user = User.find(params[:user_id])
  end
end
