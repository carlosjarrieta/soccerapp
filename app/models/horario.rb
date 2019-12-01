# == Schema Information
#
# Table name: horarios
#
#  id         :integer          not null, primary key
#  hora       :string(10)       not null
#  tipo       :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  color      :string(255)
#

class Horario < ApplicationRecord

  enum tipo: {
    manana: 1,
    tarde: 2,
    noche: 3,
  }

    scope :manana, -> {where(tipo: 1 )}
    scope :tarde, -> {where(tipo: 2 )}
    scope :noche, -> {where(tipo: 3 )}
  


    #relaciones
     has_many :horario_canchas
     has_many :canchas, through: :horario_canchas

end
