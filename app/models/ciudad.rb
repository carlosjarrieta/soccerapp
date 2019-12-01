# == Schema Information
#
# Table name: ciudades
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  departamento_id :integer
#

class Ciudad < ApplicationRecord
  belongs_to :departamento
  has_many :canchas

  def to_s
    self.name + " - " + departamento.name
  end
end
