class Admins::ComerciosController < ApplicationController
  before_action :set_comercio, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!

  layout 'admin/application'

  # GET /comercios
  def index
    @comercios = Comercio.all
  end

  # GET /comercios/1
  def show
  end

  # GET /comercios/new
  def new
    @comercio = Comercio.new
  end

  # GET /comercios/1/edit
  def edit
  end

  # POST /comercios
  def create
    @comercio = Comercio.new(comercio_params)
    @comercio.admin = current_admin
    if params[:ciudad][:id].present?
        @comercio.ciudad_id = params[:ciudad][:id]
    end
    if @comercio.save
      redirect_to admin_path, notice: 'Comercio registrado correctamente!'
    else
      render :new
    end
  end

  # PATCH/PUT /comercios/1
  def update
    if @comercio.update(comercio_params)
      redirect_to admin_path, notice: 'Comercio actualizado correctamente!'
    else
      render :edit
    end
  end

  # DELETE /comercios/1
  def destroy
    @comercio.destroy
    redirect_to admin_path, notice: 'Se ha elimiando el comercio exitosamente!'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comercio
      @comercio = Comercio.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comercio_params
      params.require(:comercio).permit(:nombre, :direccion, :telefono, :latitud, :longitud, :admin_id, :ciudad_id)
    end
end
