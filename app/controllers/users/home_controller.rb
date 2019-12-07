class Users::HomeController < ApplicationController
  before_action :authenticate_user!
  layout 'user/application'
  before_action :set_cancha, only: [:show, :reservar]
  before_action :set_horarios, only: [:show, :reservar]


  def index
    @canchas = Cancha.joins(:ciudad).order('ciudades.name')

    if !params[:ciudad].blank?
      ciudad_id = params[:ciudad][:id]
      @canchas = @canchas.where(ciudad_id: ciudad_id)
    end

    respond_to do |format|
        format.html
        format.js
    end
  end



  def show
  end

  def options
    @ciudades = Ciudad.where(departamento_id: params[:departamento_id])
  end

  def search
    if params[:query].present?
        @canchas = Cancha.where("nombre LIKE ?", "%" + params[:query] + "%")
      elsif params[:query].empty?
        @canchas = Cancha.all
    end

  end

  def acount

  end

  def reservar
    if params[:horario_id].present?
      horario_id = params[:horario_id]

      if user_signed_in?
        horario_cancha = HorarioCancha.find(horario_id)
        horario_cancha.reservado = true
        horario_cancha.save!

        #guardar la reserva en la tabla reservas
        r = Reserva.new
        r.user = current_user
        r.horario_cancha = horario_cancha
        r.status = true
        r.save

      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cancha
      @cancha = Cancha.find(params[:id])
    end


    def set_horarios
        date_at = Time.zone.now.strftime("%Y-%m-%d")
      @horario_manana = HorarioCancha.joins(:horario).select('horario_canchas.*,horarios.hora').where(cancha_id: @cancha.id).where('tipo = 1')
      .where("horario_canchas.created_at >= ?", date_at)
      @horario_tarde = HorarioCancha.joins(:horario).select('horario_canchas.*,horarios.hora').where(cancha_id: @cancha.id).where('tipo = 2')
      .where("horario_canchas.created_at >= ?", date_at)
      @horario_noche = HorarioCancha.joins(:horario).select('horario_canchas.*,horarios.hora').where(cancha_id: @cancha.id).where('tipo = 3')
      .where("horario_canchas.created_at >= ?", date_at)
    end

    # Only allow a trusted parameter "white list" through.
    def cancha_params
      params.require(:cancha).permit(:nombre, :precio, :comercio_id, :ciudad_id, :descripcion, :foto)
    end


end
