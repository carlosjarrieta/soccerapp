class CreateHorariosJob < ApplicationJob

  queue_as :default

  # CreateHorariosJob.perform_later("hoge")

  def perform(*args)
    puts "*" * 100
  end

end
