class CreateComercios < ActiveRecord::Migration[5.2]
  def change
    create_table :comercios do |t|
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.float :latitud
      t.float :longitud
      t.references :admin, foreign_key: true
      t.references :ciudad, foreign_key: true

      t.timestamps
    end
  end
end
