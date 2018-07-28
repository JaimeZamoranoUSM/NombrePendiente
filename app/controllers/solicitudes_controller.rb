class SolicitudesController < ApplicationController
  def index
    @solicitudes = Solicitude.all
  end

  def show
    @solicitudes = Solicitude.find(params[:id])
  end

  def new
     @solicitudes = Solicitude.new
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
    params.require(:solicitude).permit(:titulo, :texto, :estado, :f_requerida, :f_estimada)
  end
end
