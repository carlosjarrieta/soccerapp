class CreateHorarios < ActiveRecord::Migration[5.2]
  def change
    create_table :horarios do |t|
      t.string :hora, limit: 10, null: false
      t.integer :tipo, null: false
      t.timestamps
    end
  end
end
