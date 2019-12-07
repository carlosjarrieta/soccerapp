class CreateHorariosJob < ApplicationJob

  queue_as :default

  # CreateHorariosJob.perform_later("hoge")

  def perform()
    canchas = Cancha.all
    canchas.each do |cancha|
      18.times do |i|
        puts "ID HORARIO CANCHA 1#{i+1}"
        c = HorarioCancha.new
        c.cancha = cancha
        c.fecha = Time.now
        c.horario_id = i+1
        c.save!
      end
    end
  end

end
