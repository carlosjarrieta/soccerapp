class CreateCiudades < ActiveRecord::Migration[5.2]
  def change
    create_table :ciudades do |t|
      t.string :name
      t.references :departamento, foreign_key: true
    end
  end
end
