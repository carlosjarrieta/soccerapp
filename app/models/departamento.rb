# == Schema Information
#
# Table name: departamentos
#
#  id   :integer          not null, primary key
#  name :string(255)
#

class Departamento < ApplicationRecord
  has_many :ciudades, dependent: :destroy

end
