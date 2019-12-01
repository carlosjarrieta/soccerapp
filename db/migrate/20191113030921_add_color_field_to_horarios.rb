class AddColorFieldToHorarios < ActiveRecord::Migration[5.2]
  def change
    add_column :horarios, :color, :string
  end
end
