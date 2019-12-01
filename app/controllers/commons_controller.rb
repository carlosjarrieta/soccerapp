class CommonsController < ApplicationController
  def load_comercios
    @comercios = current_admin.comercios
  end
end
