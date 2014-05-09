class AdminController < ApplicationController
  layout "admindash"

  def index
    @total_orders = Order.count
  end
end
