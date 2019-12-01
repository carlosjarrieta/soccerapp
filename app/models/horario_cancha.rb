# == Schema Information
#
# Table name: horario_canchas
#
#  id         :integer          not null, primary key
#  cancha_id  :integer
#  horario_id :integer
#  fecha      :date
#  reservado  :boolean          default("0")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class HorarioCancha < ApplicationRecord
  belongs_to :cancha
  belongs_to :horario

  scope :disponible, -> {where(reservado: false )}
  scope :reservado, -> {where(reservado: true )}
end
