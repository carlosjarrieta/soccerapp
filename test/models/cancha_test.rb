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

require 'test_helper'

class CanchaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
