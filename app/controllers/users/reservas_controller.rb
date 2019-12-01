class Users::ReservasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_reserva, only: [:destroy]


  layout 'user/application'
  def index
    @reservas = current_user.reservas
  end

  def destroy
    if params[:id].present?
      #actualiza la reserva y la anula
      @reserva.status = false
      if @reserva.save!
        #buscar el horario_cancha y habilitarlo
        @horario_cancha = @reserva.horario_cancha
        @horario_cancha.reservado = false
        @horario_cancha.save!
        flash[:success] = "Se anuló la reserva de la cancha!"
        flash[:alert] = "El horario seleccionado, está disponible!"
      end
        redirect_to users_reservas_path
    end
  end


  private
    def set_reserva
        @reserva = Reserva.find(params[:id])
    end

end
