class LaudusController < ApplicationController
  before_action :set_laudu, only: [:show, :edit, :update, :destroy]

  # GET /laudus
  # GET /laudus.json
  def index
     @laudus = HTTParty.get('https://jsonplaceholder.typicode.com/posts/1/comments',
     :headers =>{'Content-Type' => 'application/json'} )
   end

  # GET /laudus/1
  # GET /laudus/1.json
  def show
  end

  # GET /laudus/new
  def new
    @laudu = Laudu.new
  end

  # GET /laudus/1/edit
  def edit
  end

  # POST /laudus
  # POST /laudus.json
  def create
    @laudu = Laudu.new(laudu_params)

    respond_to do |format|
      if @laudu.save
        format.html { redirect_to @laudu, notice: 'Laudu was successfully created.' }
        format.json { render :show, status: :created, location: @laudu }
      else
        format.html { render :new }
        format.json { render json: @laudu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /laudus/1
  # PATCH/PUT /laudus/1.json
  def update
    respond_to do |format|
      if @laudu.update(laudu_params)
        format.html { redirect_to @laudu, notice: 'Laudu was successfully updated.' }
        format.json { render :show, status: :ok, location: @laudu }
      else
        format.html { render :edit }
        format.json { render json: @laudu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /laudus/1
  # DELETE /laudus/1.json
  def destroy
    @laudu.destroy
    respond_to do |format|
      format.html { redirect_to laudus_url, notice: 'Laudu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_laudu
      @laudu = Laudu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def laudu_params
      params.require(:laudu).permit(:userId)
    end
end
