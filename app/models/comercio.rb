# == Schema Information
#
# Table name: comercios
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  direccion  :string(255)
#  telefono   :string(255)
#  latitud    :float(24)
#  longitud   :float(24)
#  admin_id   :integer
#  ciudad_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comercio < ApplicationRecord
  belongs_to :admin
  belongs_to :ciudad

  has_many :canchas, dependent: :destroy


  #validaciones
  validates :nombre, presence:true
  validates :direccion, presence:true
  validates :telefono, presence:true
  validates :latitud, presence:true
  validates :longitud, presence:true
  validates_presence_of :ciudad
  validates_presence_of :admin

  def to_s
    self.nombre
  end
end
