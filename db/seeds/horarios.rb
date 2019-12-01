# SEED DE Horarios



ActiveRecord::Base.connection.execute("SET FOREIGN_KEY_CHECKS = 0;")
ActiveRecord::Base.connection.execute("TRUNCATE horarios")
ActiveRecord::Base.connection.execute("TRUNCATE horario_canchas")
ActiveRecord::Base.connection.execute("TRUNCATE reservas")


# HORARIOS DE MAÑANA
Horario.create!([
  { hora: '06 - 07', tipo: 1, color:'background-color--primary' },
  { hora: '07 - 08', tipo: 1, color:'background-color--primary'  },
  { hora: '08 - 09', tipo: 1, color:'background-color--primary'  },
  { hora: '09 - 10', tipo: 1 , color:'background-color--primary' },
  { hora: '10 - 11', tipo: 1, color:'background-color--primary'  },
  { hora: '11 - 12', tipo: 1 , color:'background-color--primary' },
  ])
  # HORARIOS DE TARDE
  Horario.create!([
    { hora: '12 - 01', tipo: 2 , color: 'color--orange'},
    { hora: '01 - 02', tipo: 2 ,color: 'color--orange'},
    { hora: '02 - 03', tipo: 2 ,color: 'color--orange'},
    { hora: '03 - 04', tipo: 2 ,color: 'color--orange'},
    { hora: '04 - 05', tipo: 2 ,color: 'color--orange'},
    { hora: '05 - 06', tipo: 2 ,color: 'color--orange'},
    ])
    # HORARIOS DE NOCHE
    Horario.create!([
      { hora: '06 - 07', tipo: 3, color: 'color--purple' },
      { hora: '07 - 08', tipo: 3 , color: 'color--purple'},
      { hora: '08 - 09', tipo: 3 , color: 'color--purple'},
      { hora: '09 - 10', tipo: 3, color: 'color--purple' },
      { hora: '10 - 11', tipo: 3 , color: 'color--purple'},
      { hora: '11 - 12', tipo: 3 , color: 'color--purple'},
      ])


      #CREAR HORARIO PARA LA CANCHA 1
      18.times do |i|
        puts "ID HORARIO CANCHA 1#{i+1}"
        c = HorarioCancha.new
        c.cancha_id = 1
        c.fecha = Time.now
        c.horario_id = i+1
        c.save!
      end
      #CREAR HORARIO PARA LA CANCHA 1
      18.times do |i|
        puts "ID HORARIO CANCHA 2#{i+1}"
        c = HorarioCancha.new
        c.cancha_id = 2
        c.fecha = Time.now
        c.horario_id = i+1
        c.save!
      end
