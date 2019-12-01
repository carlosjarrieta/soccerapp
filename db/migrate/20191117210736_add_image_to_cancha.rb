class AddImageToCancha < ActiveRecord::Migration[5.2]
  def change
    add_column :canchas, :foto, :string, null: false
  end
end
