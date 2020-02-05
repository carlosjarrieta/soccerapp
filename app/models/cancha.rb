# == Schema Information
#
# Table name: canchas
#
#  id          :integer          not null, primary key
#  nombre      :string(255)
#  precio      :integer
#  comercio_id :integer
#  ciudad_id   :integer
#  descripcion :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cancha < ApplicationRecord
  belongs_to :comercio
  belongs_to :ciudad
  
  has_many :horario_canchas, dependent: :destroy
  has_many :horarios, through: :horario_canchas

  validates :nombre, :precio, :comercio_id, :ciudad_id, :descripcion, :foto,   presence: true

  mount_uploader :foto, FotoCanchaUploader

  def to_s
    self.nombre
  end
end
