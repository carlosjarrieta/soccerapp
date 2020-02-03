class Admins::ReservasController < ApplicationController
  before_action :authenticate_admin!
   before_action :sumar, only:[:index]

   layout 'admin/application'

   def index
     @reservas = Reserva.all
   end

   private
     def sumar
       @suma = Reserva.joins(:horario_cancha => [:cancha]).where('reservas.status=true').sum('canchas.precio')
     end
end
