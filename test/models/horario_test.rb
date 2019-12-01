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

require 'test_helper'

class HorarioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
