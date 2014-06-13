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
brasil = Team.find_by abreviatura: 'bra'
if not brasil
 brasil = Team.new nombre: 'Brasil', abreviatura: 'bra'
end
croacia = Team.find_by abreviatura:'cro'
if not croacia
	croacia = Team.new nombre: 'Croacia', abreviatura: 'cro'
end


#grupo B

españa = Team.find_by abreviatura: 'esp'
if not españa
 españa = Team.new nombre: 'España', abreviatura: 'esp'
end
holanda = Team.find_by abreviatura: 'hol'
if not holanda
 holanda = Team.new nombre: 'Holanda', abreviatura: 'hol'
end
chile = Team.find_by abreviatura: 'chi'
if not chile 
	chile = Team.new nombre: 'Chile', abreviatura: 'chi'
end
australia = Team.find_by abreviatura: 'aus'
if not australia
australia = Team.new nombre: 'Australia', abreviatura: 'aus'
end



#grupo C
colombia = Team.find_by abreviatura: 'col'
if not colombia
colombia = Team.new nombre: 'Colombia', abreviatura: 'col'
end
 grecia = Team.find_by abreviatura:'gre'
 if not grecia
grecia = Team.new nombre: 'Grecia', abreviatura: 'gre'
end
costa_de_marfil = Team.find_by abreviatura: 'civ'
if not costa_de_marfil
costa_de_marfil = Team.new nombre: 'Costa de Marfil', abreviatura: 'civ'
end

japon = Team.find_by abreviatura: 'jpn'
if not japon
japon = Team.new nombre: 'Japon', abreviatura: 'jpn'
end

#grupo D
uruguay = Team.find_by abreviatura: 'uru'
if not uruguay
uruguay = Team.new nombre: 'Uruguay', abreviatura: 'uru'
end

costa_rica = Team.find_by abreviatura: 'crc'
if not costa_rica
costa_rica= Team.new nombre: 'Costa Rica', abreviatura: 'crc'
end

inglaterra = Team.find_by abreviatura: 'eng'
if not inglaterra
inglaterra = Team.new nombre: 'Inglaterra', abreviatura: 'eng'
end
italia = Team.find_by abreviatura: 'ita'
if not italia
italia = Team.new nombre: 'Italia', abreviatura: 'ita'
end

suiza = Team.find_by abreviatura: 'sui'
if not suiza
   suiza = Team.new nombre: 'Suiza', abreviatura: 'sui'
end

ecuador = Team.find_by abreviatura: 'ecu'
if not ecuador
	ecuador = Team.new nombre: 'Ecuador', abreviatura: 'ecu'
end

francia = Team.find_by abreviatura: 'fra'
if not francia
   francia = Team.new nombre:'Francia', abreviatura:'fra'
end

honduras = Team.find_by abreviatura: 'hon'
if not honduras
	honduras = Team.new nombre: 'Honduras', abreviatura: 'hon'
end

argentina = Team.find_by abreviatura: 'arg'
if not argentina
	argentina = Team.new nombre: 'Argentina', abreviatura: 'arg'
end

bosnia = Team.find_by abreviatura: 'bih'
if not bosnia 
	bosnia = Team.new nombre: 'Bosnia', abreviatura: 'bih'
end

iran = Team.find_by abreviatura: 'irn'
if not iran
	iran = Team.new nombre: 'Irán', abreviatura: 'irn'
end

nigeria = Team.find_by abreviatura: 'nga'
if not nigeria
	nigeria = Team.new nombre: 'Nigeria', abreviatura: 'nga'
end

alemania = Team.find_by abreviatura: 'ger'
if not alemania
	alemania = Team.new nombre: 'Alemania', abreviatura: 'ger'
end

portugal = Team.find_by abreviatura: 'por'
if not portugal 
	portugal = Team.new nombre: 'Portugal', abreviatura: 'por'
end

ghana = Team.find_by abreviatura: 'gha'
if not ghana
	ghana = Team.new nombre: 'Ghana', abreviatura: 'gha'
end

estados_unidos = Team.find_by abreviatura: 'usa'
if not estados_unidos
	estados_unidos = Team.new nombre: 'Estados Unidos', abreviatura: 'USA'
end



belgica = Team.find_by abreviatura: 'bel'
if not belgica 
	belgica = Team.new nombre: 'Bélgica', abreviatura: 'bel'
end

argelia = Team.find_by abreviatura: 'alg'
if not argelia 
	argelia = Team.new nombre: 'Argelia', abreviatura: 'alg'
end

rusia = Team.find_by abreviatura: 'rus'
if not rusia
	rusia = Team.new nombre: 'Rusia', abreviatura: 'rus'
end

republica_de_corea = Team.find_by abreviatura:'kor'
if not republica_de_corea
	republica_de_corea = Team.new nombre: 'República de corea', abreviatura: 'kor'
end



#CREACION DE GRUPOS

grupo_A = Group.find_by nombre: 'Grupo A'
if not grupo_A 
	grupo_A = Group.new nombre: 'Grupo A'
end
mexico.group = grupo_A
camerun.group = grupo_A
croacia.group = grupo_A
brasil.group = grupo_A
mexico.save
camerun.save
brasil.save
croacia.save
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
   grupo_C = Group.new nombre: 'Grupo C'
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
   grupo_D = Group.new nombre: 'Grupo D'
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
if not grupo_G
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
	grupo_H = Group.new nombre: 'Grupo H'
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

fecha_partido_25 = DateTime.parse("2014-06-15 11:00:00")
partido_25 = Game.where(fecha: fecha_partido_25, local: suiza, visita: ecuador).first
if not partido_25
partido_25 = Game.new fecha: fecha_partido_25, local: suiza, visita:ecuador, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_26 = DateTime.parse("2014-06-15 14:00:00")
partido_26 = Game.where(fecha: fecha_partido_26, local: francia, visita: honduras).first
if not partido_26
partido_26 = Game.new fecha: fecha_partido_26, local:francia, visita:honduras, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_27 = DateTime.parse("2014-06-15 17:00:00")
partido_27 = Game.where(fecha: fecha_partido_27, local: argentina, visita: bosnia).first
if not partido_27
partido_27 = Game.new fecha: fecha_partido_27, local:argentina, visita:bosnia, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_28 = DateTime.parse("2014-06-16 11:00:00")
partido_28 = Game.where(fecha: fecha_partido_28, local: alemania, visita: portugal).first
if not partido_28
partido_28 = Game.new fecha: fecha_partido_28, local:alemania, visita:portugal, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_29 = DateTime.parse("2014-06-16 14:00:00")
partido_29 = Game.where(fecha: fecha_partido_29, local: iran, visita: nigeria).first
if not partido_29
partido_29 = Game.new fecha: fecha_partido_29, local:iran, visita:nigeria, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_30 = DateTime.parse("2014-06-16 17:00:00")
partido_30 = Game.where(fecha: fecha_partido_30, local: ghana, visita: estados_unidos).first
if not partido_30
partido_30 = Game.new fecha: fecha_partido_30, local:ghana, visita:estados_unidos, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_31 = DateTime.parse("2014-06-17 11:00:00")
partido_31 = Game.where(fecha: fecha_partido_31, local: belgica, visita: argelia).first
if not partido_31
partido_31 = Game.new fecha: fecha_partido_31, local:belgica, visita:argelia, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_32 = DateTime.parse("2014-06-17 17:00:00")
partido_32 = Game.where(fecha: fecha_partido_32, local: rusia, visita: republica_de_corea).first
if not partido_32
partido_32 = Game.new fecha: fecha_partido_32, local:rusia, visita:republica_de_corea, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_33 = DateTime.parse("2014-06-20 14:00:00")
partido_33 = Game.where(fecha: fecha_partido_33, local: suiza, visita: francia).first
if not partido_33
partido_33 = Game.new fecha: fecha_partido_33, local:suiza, visita:francia, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_34 = DateTime.parse("2014-06-20 17:00:00")
partido_34 = Game.where(fecha: fecha_partido_34, local: honduras, visita: ecuador).first
if not partido_34
partido_34 = Game.new fecha: fecha_partido_34, local:honduras, visita:ecuador, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_35 = DateTime.parse("2014-06-21 11:00:00")
partido_35 = Game.where(fecha: fecha_partido_35, local: argentina, visita: iran).first
if not partido_35
partido_35 = Game.new fecha: fecha_partido_35, local:argentina, visita:iran, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_36 = DateTime.parse("2014-06-21 14:00:00")
partido_36 = Game.where(fecha: fecha_partido_36, local: alemania, visita: ghana).first
if not partido_36
partido_36 = Game.new fecha: fecha_partido_36, local:alemania, visita:ghana, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_37 = DateTime.parse("2014-06-21 17:00:00")
partido_37 = Game.where(fecha: fecha_partido_37, local: nigeria, visita: bosnia).first
if not partido_37
partido_37 = Game.new fecha: fecha_partido_37, local:nigeria, visita:bosnia, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_38 = DateTime.parse("2014-06-22 11:00:00")
partido_38 = Game.where(fecha: fecha_partido_38, local: belgica, visita: rusia).first
if not partido_38
partido_38 = Game.new fecha: fecha_partido_38, local:belgica, visita:rusia, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end


fecha_partido_39 = DateTime.parse("2014-06-22 14:00:00")
partido_39 = Game.where(fecha: fecha_partido_39, local: republica_de_corea, visita: argelia).first
if not partido_39
partido_39 = Game.new fecha: fecha_partido_39, local:republica_de_corea, visita:argelia, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_40 = DateTime.parse("2014-06-22 17:00:00")
partido_40 = Game.where(fecha: fecha_partido_40, local: estados_unidos, visita: portugal).first
if not partido_40
partido_40 = Game.new fecha: fecha_partido_40, local:estados_unidos, visita:portugal, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_41 = DateTime.parse("2014-06-25 11:00:00")
partido_41 = Game.where(fecha: fecha_partido_41, local: nigeria, visita: argentina).first
if not partido_41
partido_41 = Game.new fecha: fecha_partido_41, local:nigeria, visita:argentina, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_42 = DateTime.parse("2014-06-25 11:00:00")
partido_42 = Game.where(fecha: fecha_partido_42, local: bosnia, visita: iran).first
if not partido_42
partido_42 = Game.new fecha: fecha_partido_42, local:bosnia, visita:iran, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_43 = DateTime.parse("2014-06-25 15:00:00")
partido_43 = Game.where(fecha: fecha_partido_43, local: honduras, visita: suiza).first
if not partido_43
partido_43 = Game.new fecha: fecha_partido_43, local:honduras, visita:suiza, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_44 = DateTime.parse("2014-06-25 17:00:00")
partido_44 = Game.where(fecha: fecha_partido_44, local: ecuador, visita: francia).first
if not partido_44
partido_44 = Game.new fecha: fecha_partido_44, local:ecuador, visita:francia, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_45 = DateTime.parse("2014-06-26 11:00:00")
partido_45 = Game.where(fecha: fecha_partido_45, local: portugal, visita: ghana).first
if not partido_45
partido_45 = Game.new fecha: fecha_partido_45, local:portugal, visita:ghana, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_46 = DateTime.parse("2014-06-26 11:00:00")
partido_46 = Game.where(fecha: fecha_partido_46, local: estados_unidos, visita: alemania).first
if not partido_46
partido_46 = Game.new fecha: fecha_partido_46, local:estados_unidos, visita:alemania, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_47 = DateTime.parse("2014-06-26 15:00:00")
partido_47 = Game.where(fecha: fecha_partido_47, local: republica_de_corea, visita: belgica).first
if not partido_47
partido_47 = Game.new fecha: fecha_partido_47, local:republica_de_corea, visita:belgica, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end

fecha_partido_48 = DateTime.parse("2014-06-26 15:00:00")
partido_48 = Game.where(fecha: fecha_partido_48, local: argelia, visita: rusia).first
if not partido_48
partido_48 = Game.new fecha: fecha_partido_48, local:argelia, visita:rusia, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
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

fecha_partido_10 = DateTime.parse("2014-06-18 11:00:00")
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

partido_25.stage = fase_1
partido_26.stage = fase_1
partido_27.stage = fase_1
partido_28.stage = fase_1
partido_29.stage = fase_1
partido_30.stage = fase_1
partido_31.stage = fase_1
partido_32.stage = fase_1
partido_25.save
partido_26.save
partido_27.save
partido_28.save
partido_29.save
partido_30.save
partido_31.save
partido_32.save

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

partido_33.stage = fase_2
partido_34.stage = fase_2
partido_35.stage = fase_2
partido_36.stage = fase_2
partido_37.stage = fase_2
partido_38.stage = fase_2
partido_39.stage = fase_2
partido_40.stage = fase_2
partido_33.save
partido_34.save
partido_35.save 
partido_36.save 
partido_37.save 
partido_38.save 
partido_39.save 
partido_40.save 




fase_3 = Stage.find_by fase: "Jornada 3"
if not fase_3
 fase_3 = Stage.new fase: "Jornada 3"
end
fase_3.save
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

partido_41.stage = fase_3
partido_42.stage = fase_3
partido_43.stage = fase_3
partido_44.stage = fase_3
partido_45.stage = fase_3
partido_46.stage = fase_3
partido_47.stage = fase_3
partido_48.stage = fase_3


partido_41.save 
partido_42.save 
partido_43.save 
partido_44.save 
partido_45.save 
partido_46.save 
partido_47.save 
partido_48.save 

