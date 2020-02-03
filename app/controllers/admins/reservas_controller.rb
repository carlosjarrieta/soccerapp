class Admins::ReservasController < ApplicationController
  before_action :authenticate_admin!
   # before_action :sumar, only:[:index]

   layout 'admin/application'

   def index
     if params[:start_at].present?
       @reservas = search
     else
       #solo se trae los giros del dia
       date_at = Time.zone.now.strftime("%Y-%m-%d")
      @reservas = Reserva.joins(:horario_cancha => [:cancha]).where('reservas.status=true').
      where("reservas.created_at >= ?", date_at)

       # @transfers = current_operator.transfers.where("created_at >= ?", date_at).order(created_at: :desc)
     end
     @suma = @reservas.joins(:horario_cancha => [:cancha]).where('reservas.status=true').sum('canchas.precio')
   end

   private
     def search
       start_date = params[:start_at].to_date.beginning_of_day
       end_date = params[:end_at].to_date.end_of_day
       Reserva.where(:created_at => start_date..end_date)
     end
end
