class NotMaterialsController < ApplicationController
  before_action :authenticate_user!

  def index
    @notmaterials = NotMaterial.all
  end

  def show
    @notmaterials = NotMaterial.find(params[:id])
  end

  def new
    @materials = Material.find(params[:idd])
    @notmaterials = NotMaterial.new()
  end

  def create
    @notmaterials = NotMaterial.new(notmaterials_params)

    if @notmaterials.save
      redirect_to @notmaterials
    else
      render 'new'
    end
  end

  private
  def notmaterials_params
    params.require(:not_material).permit(:nombre, :cantidad, :unidad)
  end
end
