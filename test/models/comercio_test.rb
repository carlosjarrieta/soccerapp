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

require 'test_helper'

class ComercioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
