class Admins::CanchasController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_comercio, only: [:new,:create]
  before_action :set_cancha, only: [:show, :edit, :update, :destroy]

  layout 'admin/application'

  # GET /admins/canchas
  def index
    @canchas = Admins::Cancha.all
  end

  # GET /admins/canchas/1
  def show
  end

  # GET /admins/canchas/new
  def new
    @cancha = Cancha.new
  end

  # GET /admins/canchas/1/edit
  def edit
  end

  # POST /admins/canchas
  def create

    @cancha = Cancha.new(cancha_params)
    if params[:ciudad][:id].present?
       @cancha.ciudad_id = params[:ciudad][:id]
   end

  @cancha.comercio_id = params[:comercio_id]


    if @cancha.save
      redirect_to admin_path, notice: 'Cancha creada correctamente!'
    else
      render :new
    end
  end

  # PATCH/PUT /admins/canchas/1
  def update

    if params[:ciudad][:id].present?
      @cancha.ciudad_id = params[:ciudad][:id]
    end

    if @cancha.update(cancha_params)
      redirect_to admin_path, notice: 'Cancha actualizada correctamente.'
    else
      render :edit
    end
  end

  # DELETE /admins/canchas/1
  def destroy
    @cancha.destroy
    redirect_to admin_path, notice: 'Cancha eliminada correctamente!'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cancha
      @cancha = Cancha.find(params[:id])
    end
    def set_ciudad
      @ciudad = Ciudad.find(params[:id])
    end

    def set_comercio
      @comercio = Comercio.find(params[:comercio_id])
    end

    # Only allow a trusted parameter "white list" through.
    def cancha_params
        params.require(:cancha).permit(:nombre, :precio, :comercio_id, :descripcion, :ciudad_id, :foto )
    end
end
