# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.connection.execute("SET FOREIGN_KEY_CHECKS = 0;")

[Admin,User, Cancha, Comercio ].each do |table|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table.table_name}")
end

# CREATE ADMIN
Admin.create!(email: 'carlosj.arrieta@gmail.com',
  encrypted_password: 'openwin1976',
  password: 'openwin1976',
  name: 'Carlos Arrieta',
  phone: '3042075846'
)
# CREATE USER
User.create!(email: 'tataguti27@gmail.com',
  encrypted_password: '123456',
  password: '123456',
  name: 'Tatiana Gutierrez',
  phone: '3005080007'
)

#CREAR UN COMERCIO

  5.times do |i|
   c = Comercio.new
   c.nombre = "Comercio name #{i}"
   c.direccion = "Comercio surname #{i}"
   c.admin_id = 1
   c.telefono = "Comercio phone #{i}"
   c.latitud = 10.02525
   c.longitud = -74.26216
   c.ciudad_id = 21663
   c.save!
 end

  5.times do |i|
   c = Cancha.new
   c.nombre = "Cancha nombre #{i}"
   c.comercio_id = i + 1
   c.precio = 70000
   c.ciudad_id = 21663
   c.save!
 end


ActiveRecord::Base.connection.execute("SET FOREIGN_KEY_CHECKS = 1;")
