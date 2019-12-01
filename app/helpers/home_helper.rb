module HomeHelper
  def contar_canchas(comercio)
    return comercio.canchas.count
  end
end
