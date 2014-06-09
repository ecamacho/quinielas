# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# creacion de equipos
mexico = Team.find_by abreviatura: 'mex' 
if not mexico
 mexico = Team.new nombre: 'México', abreviatura: 'mex'  
end
camerun = Team.find_by abreviatura: 'cmr'
if not camerun
	camerun = Team.new nombre: 'Camerun', abreviatura: 'cmr'
end

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

#creacion de partido

fecha_partido_1 = DateTime.parse("2014-06-13 11:00:00")
partido_1 = Game.where(fecha: fecha_partido_1, local: mexico, visita: camerun).first
if not partido_1
partido_1 = Game.new fecha: fecha_partido_1, local:mexico, visita:camerun, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end



#creacion de fase

fase_1 = Stage.find_by fase: "Jornada 1"
if not fase_1
	fase_1 = Stage.new fase: "Jornada 1"
end

partido_1.stage = fase_1
fase_1.save
partido_1.save

