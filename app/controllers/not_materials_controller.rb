class NotMaterialsController < ApplicationController
  before_action :authenticate_user!

  def index
    @notmaterials = NotMaterial.all
  end

  def show
    @notmaterials = NotMaterial.find(params[:id])
  end

  def new
    @notmaterials = NotMaterial.new
  end

  def edit
    @notmaterials = NotMaterial.find(params[:id])
   end

  def create
    @notmaterials = NotMaterial.new(notmaterials_params)

    if @notmaterials.save
      redirect_to @notmaterials
    else
      render 'new'
    end
  end

  def update
    @notmaterials = NotMaterial.find(params[:id])

    if @notmaterials.update(notmaterials_params)
      redirect_to @notmaterials
    else
      render 'edit'
    end
  end

  def destroy
      @notmaterials = NotMaterial.find(params[:id])
      @notmaterials.destroy

      redirect_to not_materials_path
    end

  private
  def notmaterials_params
    params.require(:notmaterial).permit(:nombre, :cantidad, :unidad)
  end
end
