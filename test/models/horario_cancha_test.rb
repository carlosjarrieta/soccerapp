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

require 'test_helper'

class HorarioCanchaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
