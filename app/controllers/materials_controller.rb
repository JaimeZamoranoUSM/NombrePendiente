class MaterialsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @materials = Material.all
  end

  def show
    @materials = Material.find(params[:id])
  end

  def new
    @materials = Material.new
  end

  def edit
    @materials = Material.find(params[:id])
   end

  def create
    @materials = Material.new(materials_params)

    if @materials.save
      redirect_to @materials
    else
      render 'new'
    end
  end

  def update
    @materials = Material.find(params[:id])

    if @materials.update(materials_params)
      redirect_to @materials
    else
      render 'edit'
    end
  end

  def destroy
      @materials = Material.find(params[:id])
      @materials.destroy

      redirect_to materials_path
    end

  private
  def materials_params
    params.require(:material).permit(:nombre, :cantidad, :unidad)
  end
end
