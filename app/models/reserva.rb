# == Schema Information
#
# Table name: reservas
#
#  id                :integer          not null, primary key
#  user_id           :integer
#  horario_cancha_id :integer
#  status            :boolean
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Reserva < ApplicationRecord
  belongs_to :user
  belongs_to :horario_cancha
end
