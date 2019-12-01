class Users::CanchasController < ApplicationController
  before_action :set_cancha, only: [:show]
  before_action :buscar_horarios, only: [:show]
  before_action :authenticate_user! , only: [:reservar]
  layout 'user/application'

  def show
  end

  def reservar
    # @horario_manana = HorarioCancha.joins(:horario).select('horario_canchas.*,horarios.hora').where(cancha_id: @cancha.id).where('tipo = 1')
    # @horario_tarde = HorarioCancha.joins(:horario).select('horario_canchas.*,horarios.hora').where(cancha_id: @cancha.id).where('tipo = 2')
    # @horario_noche = HorarioCancha.joins(:horario).select('horario_canchas.*,horarios.hora').where(cancha_id: @cancha.id).where('tipo = 3')

    if params[:horario_id].present?
      horario_id = params[:horario_id]
      horario_cancha = HorarioCancha.find(horario_id)
      @cancha = horario_cancha.cancha
      horario_cancha.reservado = true
      horario_cancha.save!
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cancha
      @cancha = Cancha.find(params[:id])
    end


    def buscar_horarios
      @horario_manana = HorarioCancha.joins(:horario).select('horario_canchas.*,horarios.hora').where(cancha_id: @cancha.id).where('tipo = 1')
      @horario_tarde = HorarioCancha.joins(:horario).select('horario_canchas.*,horarios.hora').where(cancha_id: @cancha.id).where('tipo = 2')
      @horario_noche = HorarioCancha.joins(:horario).select('horario_canchas.*,horarios.hora').where(cancha_id: @cancha.id).where('tipo = 3')
    end

end
