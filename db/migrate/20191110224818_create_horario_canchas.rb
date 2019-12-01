class CreateHorarioCanchas < ActiveRecord::Migration[5.2]
  def change
    create_table :horario_canchas do |t|
      t.references :cancha, foreign_key: true
      t.references :horario, foreign_key: true
      t.date :fecha
      t.boolean :reservado, default: false
      t.timestamps
    end
  end
end
