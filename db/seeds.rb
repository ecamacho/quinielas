#encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

mexico = Team.find_by abreviatura: 'mex' 
if not mexico
 mexico = Team.new nombre: 'México', abreviatura: 'mex'  
end
camerun = Team.find_by abreviatura: 'cmr'
if not camerun
	camerun = Team.new nombre: 'Camerun', abreviatura: 'cmr'
end


brasil = Team.new nombre: 'Brasil', abreviatura: 'bra'


croacia = Team.new nombre: 'Croacia', abreviatura: 'cro'



#grupo B

españa = Team.new nombre: 'España', abreviatura: 'esp'


holanda = Team.new nombre: 'Holanda', abreviatura: 'hol'


chile = Team.new nombre: 'Chile', abreviatura: 'chi'


australia = Team.new nombre: 'Australia', abreviatura: 'aus'



#grupo C
colombia = Team.new nombre: 'Colombia', abreviatura: 'col'

 
grecia = Team.new nombre: 'Grecia', abreviatura: 'gre'


costa_de_marfil = Team.new nombre: 'Costa de Marfil', abreviatura: 'civ'


japon = Team.new nombre: 'Japon', abreviatura: 'jpn'


#grupo D

uruguay = Team.new nombre: 'Uruguay', abreviatura: 'uru'


costa_rica= Team.new nombre: 'Costa Rica', abreviatura: 'crc'


inglaterra = Team.new nombre: 'Inglaterra', abreviatura: 'eng'


italia = Team.new nombre: 'Italia', abreviatura: 'ita'

#CREACION DE GRUPOS

grupo_A = Group.find_by nombre: 'Grupo A'
if not grupo_A 
	grupo_A = Group.new nombre: 'Grupo A'
end
mexico.group = grupo_A
camerun.group = grupo_A
mexico.save
camerun.save
grupo_A.save

grupo_B = Group.find_by nombre: 'Grupo B'
if not grupo_B
 grupo_B = Group.new nombre: 'Grupo B'
end
españa.group = grupo_B
holanda.group = grupo_B
chile.group = grupo_B
australia.group = grupo_B
españa.save
holanda.save
chile.save
australia.save
grupo_B.save

grupo_C = Group.find_by nombre: 'Grupo C'
if not grupo_C
   grupo_C = Group.new nombre: 'Group C'
end
colombia.group = grupo_C
grecia.group = grupo_C
costa_de_marfil.group = grupo_C
japon.group = grupo_C
colombia.save
grecia.save
costa_de_marfil.save
japon.save
grupo_C.save

grupo_D = Group.find_by nombre: 'Grupo D'
if not grupo_D
   grupo_D = Group.new nombre: 'Group C'
end
uruguay.group = grupo_D
costa_rica.group = grupo_D
inglaterra.group = grupo_D
italia.group = grupo_D
uruguay.save
costa_rica.save
inglaterra.save
italia.save
grupo_D.save











#creacion de partido

fecha_partido_1 = DateTime.parse("2014-06-13 11:00:00")
partido_1 = Game.where(fecha: fecha_partido_1, local: mexico, visita: camerun).first
if not partido_1
partido_1 = Game.new fecha: fecha_partido_1, local:mexico, visita:camerun, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end



fecha_partido_2 = DateTime.parse("2014-06-12 15:00:00")
partido_2 = Game.where(fecha: fecha_partido_2, local:brasil, visita: croacia).first
if not partido_2 
  partido_2 = Game.new fecha: fecha_partido_2, local:brasil, visita:croacia, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0 
end


fecha_partido_3 = DateTime.parse("2014-06-13 14:00:00")
partido_3 = Game.where(fecha: fecha_partido_3, local:españa, visita:holanda).first
if not partido_3
  partido_3 = Game.new fecha: fecha_partido_3, local:españa, visita:holanda, goles_visita: 0, goles_local: 0, jugado:false, resultado: 0
end


fecha_partido_4 = DateTime.parse("2014-06-13 17:00:00")
if not partido_4 = Game.where(fecha: fecha_partido_4, local:chile, visita:australia).first
  partido_4 = Game.new fecha:fecha_partido_4, local: chile, visita:australia, goles_visita: 0, goles_local: 0, jugado:false, resultado: 0
end


fecha_partido_5 = DateTime.parse("2014-06-14 11:00:00")
if not partido_5 = Game.where(fecha: fecha_partido_5, local:colombia, visita:grecia).first
 partido_5 = Game.new fecha: fecha_partido_5, local:colombia, visita:grecia, goles_visita: 0, goles_local: 0, jugado:false, resultado:0
end


fecha_partido_6 = DateTime.parse("2014-06-14 14:00:00")
if not partido_6 = Game.where(fecha: fecha_partido_6, local:uruguay, visita:costa_rica).first
partido_6 = Game.new fecha: fecha_partido_6, local:uruguay, visita:costa_rica, goles_visita: 0, goles_local:0, jugado:false, resultado:0
end

fecha_partido_7 = DateTime.parse("2014-06-14 17:00:00")
if not partido_7 = Game.where(fecha: fecha_partido_7, local:inglaterra, visita:italia).first
partido_7 = Game.new fecha: fecha_partido_7, local:inglaterra, visita:italia, goles_visita: 0, goles_local: 0, jugado:false, resultado: 0
end


fecha_partido_8 = DateTime.parse("2014-06-14 20:00:00")
if not partido_8 = Game.where(fecha: fecha_partido_8, local:costa_de_marfil, visita:japon).first
partido_8 = Game.new fecha: fecha_partido_8, local:costa_de_marfil, visita:japon, goles_visita: 0, goles_local: 0, jugado:false, resultado: 0
end

fecha_partido_9 = DateTime.parse("2014-06-17 14:00:00")
if not partido_9 = Game.where(fecha: fecha_partido_9, local:brasil, visita:mexico).first
partido_9 = Game.new fecha: fecha_partido_9, local:brasil, visita:mexico, goles_visita: 0, goles_local: 0, jugado:false, resultado: 0
end

fecha_partido_10 = DateTime.parse("2014-06-18 13:00:00")
if not partido_10 = Game.where(fecha: fecha_partido_10, local:australia, visita:holanda).first
partido_10 = Game.new fecha: fecha_partido_10, local:australia, visita:holanda, goles_visita: 0, goles_local: 0, jugado:false, resultado: 0
end

fecha_partido_11 = DateTime.parse("2014-06-18 14:00:00")
if not partido_11 = Game.where(fecha: fecha_partido_11, local:españa, visita:chile).first
partido_11 = Game.new fecha: fecha_partido_11, local:españa, visita:chile, goles_visita: 0, goles_local: 0, jugado:false, resultado: 0
end

fecha_partido_12 = DateTime.parse("2014-06-18 17:00:00")
if not partido_12 = Game.where(fecha: fecha_partido_12, local:camerun, visita:croacia).first
partido_12 = Game.new fecha: fecha_partido_12, local:camerun, visita:croacia, goles_visita: 0, goles_local: 0, jugado:false, resultado: 0
end



fecha_partido_13= DateTime.parse("2014-06-19 11:00:00")
if not partido_13 = Game.where(fecha: fecha_partido_13, local:colombia, visita:costa_de_marfil).first
partido_13 = Game.new fecha: fecha_partido_13, local:colombia, visita:costa_de_marfil, goles_visita: 0, goles_local: 0, jugado:false, resultado: 0
end

fecha_partido_14 = DateTime.parse("2014-06-19 14:00:00")
if not partido_14 = Game.where(fecha: fecha_partido_14, local:uruguay, visita:inglaterra).first
partido_14 = Game.new fecha: fecha_partido_14, local:uruguay, visita:inglaterra, goles_visita: 0, goles_local: 0, jugado:false, resultado: 0
end

fecha_partido_15 = DateTime.parse("2014-06-19 17:00:00")
if not partido_15 = Game.where(fecha: fecha_partido_15, local:japon, visita:grecia).first
partido_15 = Game.new fecha: fecha_partido_15, local:japon, visita:grecia, goles_visita: 0, goles_local: 0, jugado:false, resultado: 0
end

fecha_partido_16 = DateTime.parse("2014-06-20 11:00:00")
if not partido_16 = Game.where(fecha: fecha_partido_16, local:italia, visita:costa_rica).first
partido_16 = Game.new fecha: fecha_partido_16, local:italia, visita:costa_rica, goles_visita: 0, goles_local: 0, jugado:false, resultado: 0
end

fecha_partido_17 = DateTime.parse("2014-06-23 11:00:00")
if not partido_17 = Game.where(fecha: fecha_partido_17, local:holanda, visita:chile).first
partido_17 = Game.new fecha: fecha_partido_17, local:holanda, visita:chile, goles_visita: 0, goles_local: 0, jugado:false, resultado: 0
end

fecha_partido_18 = DateTime.parse("2014-06-23 11:00:00")
if not partido_18 = Game.where(fecha: fecha_partido_18, local:australia, visita:españa).first
partido_18 = Game.new fecha: fecha_partido_18, local:australia, visita:españa, goles_visita: 0, goles_local: 0, jugado:false, resultado: 0
end

fecha_partido_19 = DateTime.parse("2014-06-23 15:00:00")
if not partido_19 = Game.where(fecha: fecha_partido_19, local:camerun, visita:brasil).first
partido_19 = Game.new fecha: fecha_partido_19, local:camerun, visita:brasil, goles_visita: 0, goles_local: 0, jugado:false, resultado: 0
end

fecha_partido_20 = DateTime.parse("2014-06-23 15:00:00")
if not partido_20 = Game.where(fecha: fecha_partido_20, local:croacia, visita:mexico).first
partido_20 = Game.new fecha: fecha_partido_20, local:croacia, visita:mexico, goles_visita: 0, goles_local: 0, jugado:false, resultado: 0
end


fecha_partido_21 = DateTime.parse("2014-06-24 11:00:00")
if not partido_21 = Game.where(fecha: fecha_partido_21, local:italia, visita:uruguay).first
partido_21 = Game.new fecha: fecha_partido_21, local:italia, visita:uruguay, goles_visita: 0, goles_local: 0, jugado:false, resultado: 0
end

fecha_partido_22 = DateTime.parse("2014-06-24 11:00:00")
if not partido_22 = Game.where(fecha: fecha_partido_22, local:costa_rica, visita:inglaterra).first
partido_22 = Game.new fecha: fecha_partido_22, local:costa_rica, visita:inglaterra, goles_visita: 0, goles_local: 0, jugado:false, resultado: 0
end


fecha_partido_23 = DateTime.parse("2014-06-24 15:00:00")
if not partido_23 = Game.where(fecha: fecha_partido_23, local:japon, visita:colombia).first
partido_23 = Game.new fecha: fecha_partido_23, local:japon, visita:colombia, goles_visita: 0, goles_local: 0, jugado:false, resultado: 0
end

fecha_partido_24 = DateTime.parse("2014-06-24 15:00:00")
if not partido_24 = Game.where(fecha: fecha_partido_24, local:grecia, visita:costa_de_marfil).first
partido_24 = Game.new fecha: fecha_partido_24, local:grecia, visita:costa_de_marfil, goles_visita: 0, goles_local: 0, jugado:false, resultado: 0
end


#creacion de fase

fase_1 = Stage.find_by fase: "Jornada 1"
if not fase_1
	fase_1 = Stage.new fase: "Jornada 1"
end
fase_1.save
partido_1.stage = fase_1
partido_2.stage = fase_1
partido_3.stage = fase_1
partido_4.stage = fase_1
partido_5.stage = fase_1
partido_6.stage = fase_1
partido_7.stage = fase_1
partido_8.stage = fase_1

partido_1.save
partido_2.save
partido_3.save
partido_4.save
partido_5.save
partido_6.save
partido_7.save
partido_8.save

fase_2 = Stage.find_by fase: "Jornada 2"
if not fase_2
	fase_2 = Stage.new fase: "Jornada 2"
end
fase_2.save
partido_9.stage = fase_2
partido_10.stage = fase_2
partido_11.stage = fase_2
partido_12.stage = fase_2
partido_13.stage = fase_2
partido_14.stage = fase_2
partido_15.stage = fase_2
partido_16.stage = fase_2

partido_9.save
partido_10.save
partido_11.save
partido_12.save
partido_13.save
partido_14.save
partido_15.save
partido_16.save

fase_3 = Stage.find_by fase: "Jornada 3"
if not fase_3
 fase_3 = Stage.new fase: "Jornada 3"
end
partido_17.stage = fase_3
partido_18.stage = fase_3 
partido_19.stage = fase_3
partido_20.stage = fase_3
partido_21.stage = fase_3
partido_22.stage = fase_3
partido_23.stage = fase_3
partido_24.stage = fase_3

partido_17.save
partido_18.save
partido_19.save
partido_20.save
partido_21.save
partido_22.save
partido_23.save
partido_24.save