class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = Order.all
  end

  def show
    @orders = Order.find(params[:id])
  end

  def new
    @notmaterials = NotMaterial.all
    @orders = Order.new()
  end

  def create
    @orders = Order.new(orders_params)

    if @orders.save
      redirect_to @orders
    else
      render 'new'
    end
  end

  private
  def orders_params
    params.require(:order).permit(:nombre, :cantidad, :unidad, :tituto, :proveedor, :comentario)
  end
end
