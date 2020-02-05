# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  def create
    super
    # crea los horarios
    date_at = Time.zone.now.strftime("%Y-%m-%d")
    horarios = HorarioCancha.where("created_at >= ?", date_at)
    if horarios.count() > 1
        #ya estan creadoslos horarios
      else
          CreateHorariosJob.perform_later
    end


  end
end
