class CreateReservasUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :reservas do |t|
      t.references :user, foreign_key: true
      t.references :horario_cancha, foreign_key: true
      t.boolean :status
      t.timestamps
    end
  end
end
