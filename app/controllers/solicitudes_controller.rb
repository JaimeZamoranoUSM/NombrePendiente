class SolicitudesController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.tipo == 'Bodeguero'
      @solicitudes = Solicitude.all
    else
      @solicitudes = Solicitude.where("user_id = ?", current_user.id)
    end
  end

  def show
    @solicitudes = Solicitude.find(params[:id])
  end

  def new
     @solicitudes = Solicitude.new
     @materials = Material.all
  end

  def edit
     @solicitudes = Solicitude.find(params[:id])
   end

  def create
    @solicitudes = current_user.solicitudes.new(solicitudes_params)

    if @solicitudes.save
      redirect_to @solicitudes
    else
      render 'new'
    end
  end

  def update
    @solicitudes = Solicitude.find(params[:id])

    if @solicitudes.update(solicitudes_params)
      redirect_to @solicitudes
    else
      render 'edit'
    end
  end

  private
  def solicitudes_params
    params.require(:solicitude).permit(:titulo, :texto, :estado, :f_requerida, :f_estimada, :materials)
  end
end
