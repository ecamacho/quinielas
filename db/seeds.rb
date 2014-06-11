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

suziza = Team.find_by abreviatura:'sui'
if not suziza
   suiza = Team.new nombre: 'Suiza', abreviatura: 'sui'
end

ecuador = Team.find_by abreviatura:'ecu'
if not ecuador
	ecuador = Team.new nombre: 'Ecuador', abreviatura: 'ecu'
end

francia = Team.find_by abreviatura: 'fra'
if not francia
   francia = Team.new nombre: 'Francia' abreviatura: 'fra'
end

honduras = Team.find_by abreviatura: 'hon'
if not honduras
	honduras = Team.new nombre: 'Honduras' abreviatura: 'hon'
end

argentina = Team.find_by abreviatura: 'arg'
if not argentina
	argentina = Team.new nombre: 'Argentina' abreviatura: 'arg'
end

bosnia = Team.find_by abreviatura: 'bih'
if not bosnia 
	bosnia = Team.new nombre: 'Bosnia' abreviatura: 'bih'
end

iran = Team.find_by abreviatura: 'irn'
if not iran
	iran = Team.new nombre: 'Irán' abreviatura: 'irn'
end

nigeria = Team.find_by abreviatura: 'nga'
if not nigeria
	nigeria = Team.new nombre: 'Nigeria' abreviatura: 'nga'
end

alemania = Team.find_by abreviatura: 'ger'
if not alemania
	alemania = Team.new nombre: 'Alemania' abreviatura: 'ger'
end

portugal = Team.find_by abreviatura: 'por'
if not portugal 
	portugal = Team.new nombre: 'Portugal' abreviatura: 'por'
end

ghana = Team.find_by abreviatura: 'gha'
if not ghana
	ghana = Team.new nombre: 'Ghana' abreviatura: 'gha'
end

estados_unidos = Team.find_by abreviatura: 'usa'
if not estados_unidos
	estados_unidos = Team.new nombre: 'Estados Unidos' abreviatura: 'USA'

belgica = Team.find_by abreviatura: 'bel'
if not belgica 
	belgica = Team.new nombre: 'Bélgica' abreviatura: 'bel'
end

argelia = Team.find_by abreviatura: 'alg'
if not argelia 
	argelia = Team.new nombre: 'Argelia' abreviatura: 'alg'
end

rusia = Team.find_by abreviatura: 'rus'
if not rusia
	rusia = Team.new nombre: 'Rusia' abreviatura: 'rus'
end

republica_de_corea Team.find_by abreviatura:'kor'
if not republica_de_corea
	republica_de_corea = Team.new nombre: 'República de corea' abreviatura: 'kor'
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

grupo_E = Group.find_by nombre: 'Grupo E'
if not grupo_E
	grupo_E = Group.new nombre: 'Grupo E'
end
suiza.group = grupo_E
ecuador.group = grupo_E
francia.group = grupo_E
honduras.group = grupo_E
suiza.save
ecuador.save
francia.save
honduras.save
grupo_E.save

grupo_F = Group.find_by nombre: 'Grupo F'
if not grupo_F
	grupo_F = Group.new nombre: 'Grupo F'
end
argentina.group = grupo_F
bosnia.group = grupo_F
iran.group = grupo_F
nigeria.group = grupo_F
argentina.save
bosnia.save
iran.save
nigeria.save
grupo_F.save

grupo_G = Group.find_by nombre: 'Grupo G'
if not group_G
	grupo_G = Group.new nombre: 'Grupo G'
end
alemania.group = grupo_G
portugal.group = grupo_G
ghana.group = grupo_G
estados_unidos.group = grupo_G
alemania.save
portugal.save
ghana.save
estados_unidos.save
grupo_G.save


grupo_H = Group.find_by nombre: 'Grupo H'
if not grupo_H
	group_H = Group.new nombre: 'Grupo H'
end
belgica.group = grupo_H
argelia.group = grupo_H
rusia.group = grupo_H
republica_de_corea.group = grupo_H
belgica.save
argelia.save
rusia.save
republica_de_corea.save
grupo_H.save

#creacion de partido

fecha_partido_1 = DateTime.parse("2014-06-13 11:00:00")
partido_1 = Game.where(fecha: fecha_partido_1, local: mexico, visita: camerun).first
if not partido_1
partido_1 = Game.new fecha: fecha_partido_1, local:mexico, visita:camerun, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_26 = DateTime.parse("2014-06-15 11:00:00")
partido_26 = Game.where(fecha: fecha_partido_26, local: suiza, visita: ecuador).first
if not partido_26
partido_26 = Game.new fecha: fecha_partido_26, local: suiza, visita:ecuador, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_27 = DateTime.parse("2014-06-15 14:00:00")
partido_27 = Game.where(fecha: fecha_partido_27, local: francia, visita: honduras).first
if not partido_27
partido_27 = Game.new fecha: fecha_partido_27, local:francia, visita:honduras, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_28 = DateTime.parse("2014-06-15 17:00:00")
partido_28 = Game.where(fecha: fecha_partido_28, local: argentina, visita: bosnia).first
if not partido_28
partido_28 = Game.new fecha: fecha_partido_28, local:argentina, visita:bosnia, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_29 = DateTime.parse("2014-06-16 11:00:00")
partido_29 = Game.where(fecha: fecha_partido_29, local: alemania, visita: portugal).first
if not partido_1
partido_29 = Game.new fecha: fecha_partido_29, local:alemania, visita:portugal, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_30 = DateTime.parse("2014-06-16 14:00:00")
partido_30 = Game.where(fecha: fecha_partido_30, local: iran, visita: nigeria).first
if not partido_30
partido_30 = Game.new fecha: fecha_partido_30, local:iran, visita:nigeria, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_31 = DateTime.parse("2014-06-16 17:00:00")
partido_31 = Game.where(fecha: fecha_partido_31, local: ghana, visita: estados_unidos).first
if not partido_31
partido_31 = Game.new fecha: fecha_partido_31, local:ghana, visita:estados_unidos, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_32 = DateTime.parse("2014-06-17 11:00:00")
partido_32 = Game.where(fecha: fecha_partido_32, local: belgica, visita: argelia).first
if not partido_32
partido_32 = Game.new fecha: fecha_partido_32, local:belgica, visita:argelia, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_33 = DateTime.parse("2014-06-17 17:00:00")
partido_33 = Game.where(fecha: fecha_partido_33, local: rusia, visita: republica_de_corea).first
if not partido_33
partido_33 = Game.new fecha: fecha_partido_33, local:rusia, visita:republica_de_corea, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_34 = DateTime.parse("2014-06-20 14:00:00")
partido_34 = Game.where(fecha: fecha_partido_34, local: suiza, visita: francia).first
if not partido_34
partido_34 = Game.new fecha: fecha_partido_34, local:suiza, visita:francia, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_35 = DateTime.parse("2014-06-20 17:00:00")
partido_35 = Game.where(fecha: fecha_partido_35, local: honduras, visita: ecuador).first
if not partido_35
partido_35 = Game.new fecha: fecha_partido_35, local:honduras, visita:ecuador, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_36 = DateTime.parse("2014-06-21 11:00:00")
partido_36 = Game.where(fecha: fecha_partido_36, local: argentina, visita: iran).first
if not partido_36
partido_36 = Game.new fecha: fecha_partido_36, local:argentina, visita:iran, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_37 = DateTime.parse("2014-06-21 14:00:00")
partido_37 = Game.where(fecha: fecha_partido_1, local: alemania, visita: ghana).first
if not partido_37
partido_37 = Game.new fecha: fecha_partido_1, local:alemania, visita:ghana, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_38 = DateTime.parse("2014-06-21 17:00:00")
partido_38 = Game.where(fecha: fecha_partido_38, local: nigeria, visita: bosnia).first
if not partido_38
partido_38 = Game.new fecha: fecha_partido_38, local:nigeria, visita:bosnia, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_39 = DateTime.parse("2014-06-22 11:00:00")
partido_39 = Game.where(fecha: fecha_partido_39, local: belgica, visita: rusia).first
if not partido_39
partido_39 = Game.new fecha: fecha_partido_39, local:belgica, visita:rusia, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end


fecha_partido_40 = DateTime.parse("2014-06-22 14:00:00")
partido_40 = Game.where(fecha: fecha_partido_40, local: republica_de_corea, visita: argelia).first
if not partido_40
partido_40 = Game.new fecha: fecha_partido_40, local:republica_de_corea, visita:argelia, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_41 = DateTime.parse("2014-06-22 17:00:00")
partido_41 = Game.where(fecha: fecha_partido_41, local: estados_unidos, visita: portugal).first
if not partido_41
partido_41 = Game.new fecha: fecha_partido_41, local:estados_unidos, visita:portugal, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_42 = DateTime.parse("2014-06-25 11:00:00")
partido_42 = Game.where(fecha: fecha_partido_42, local: nigeria, visita: argentina).first
if not partido_42
partido_42 = Game.new fecha: fecha_partido_42, local:nigeria, visita:argentina, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_43 = DateTime.parse("2014-06-25 11:00:00")
partido_43 = Game.where(fecha: fecha_partido_43, local: bosnia, visita: iran).first
if not partido_43
partido_43 = Game.new fecha: fecha_partido_43, local:bosnia, visita:iran, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_44 = DateTime.parse("2014-06-25 15:00:00")
partido_44 = Game.where(fecha: fecha_partido_44, local: honduras, visita: suiza).first
if not partido_44
partido_44 = Game.new fecha: fecha_partido_44, local:honduras, visita:suiza, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_45 = DateTime.parse("2014-06-25 17:00:00")
partido_45 = Game.where(fecha: fecha_partido_45, local: ecuador, visita: francias).first
if not partido_45
partido_45 = Game.new fecha: fecha_partido_45, local:ecuador, visita:francia, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_46 = DateTime.parse("2014-06-26 11:00:00")
partido_46 = Game.where(fecha: fecha_partido_46, local: portugal, visita: ghana).first
if not partido_46
partido_46 = Game.new fecha: fecha_partido_46, local:portugal, visita:ghana, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_47 = DateTime.parse("2014-06-26 11:00:00")
partido_47 = Game.where(fecha: fecha_partido_47, local: estados_unidos, visita: alemania).first
if not partido_47
partido_47 = Game.new fecha: fecha_partido_47, local:estados_unidos, visita:alemania, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_48 = DateTime.parse("2014-06-26 15:00:00")
partido_48 = Game.where(fecha: fecha_partido_48, local: republica_de_corea, visita: belgica).first
if not partido_48
partido_48 = Game.new fecha: fecha_partido_48, local:republica_de_corea, visita:belgica, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_49 = DateTime.parse("2014-06-26 15:00:00")
partido_49 = Game.where(fecha: fecha_partido_49, local: argelia, visita: rusia).first
if not partido_49
partido_49 = Game.new fecha: fecha_partido_49, local:argelia, visita:rusia, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

#creacion de fase

fase_1 = Stage.find_by fase: "Jornada 1"
if not fase_1
	fase_1 = Stage.new fase: "Jornada 1"
end

partido_1.stage = fase_1
fase_1.save
partido_1.save

