class CreateCanchas < ActiveRecord::Migration[5.2]
  def change
    create_table :canchas do |t|
      t.string :nombre
      t.integer :precio
      t.references :comercio, foreign_key: true
      t.references :ciudad, foreign_key: true
      t.string :descripcion

      t.timestamps
    end
  end
end
