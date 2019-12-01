  class Admins::DashboardController < ApplicationController
  	before_action :authenticate_admin!

    layout 'admin/application'
    def home
      @comercios = current_admin.comercios
      @canchas = current_admin.canchas.order('canchas.nombre')
    end

    def select_dpto
      @ciudades = Ciudad.where(departamento_id: params[:departamento_id])
    end


    def update

    end
  end
