mexico = Team.find_by abreviatura: 'mex' 
if not mexico
 mexico = Team.new nombre: 'México', abreviatura: 'mex'  
end
camerun = Team.find_by abreviatura: 'cmr'
if not camerun
	camerun = Team.new nombre: 'Camerun', abreviatura: 'cmr'
end





grupo_A = Group.find_by nombre: 'Grupo A'
if not grupo_A 
	grupo_A = Group.new nombre: 'Grupo A'
end
mexico.group = grupo_A
camerun.group = grupo_A
brasil.group = grupo_A
croacia.group = grupo_A
mexico.save
camerun.save
brasil.save
croacia.save
grupo_A.save








fecha_partido_2 = DateTime.parse("2014-06-13 11:00:00")
partido_2 = Game.where(fecha: fecha_partido_1, local:   mexico, visita: camerun).first
if not partido_2
partido_2 = Game.new fecha: fecha_partido_1, local:mexico, visita:camerun, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0
end


fecha_partido_2 = DateTime.parse("2014-06-12 15:00:00")
if not partido_2 
  partido_2 = Game.new fecha: fecha_partido_2, local:brasil, visita:croacia, goles_visita: 0, goles_local: 0, jugado: false, resultado: 0 
end







fase_1 = Stage.find_by fase: "Jornada 1"
if not fase_1
	fase_1 = Stage.new fase: "Jornada 1"
end

partido_1.stage = fase_1
partido_2.stage = fase_1
partido_3.stage = fase_1
partido_4.stage = fase_1
partido_5.stage = fase_1
partido_6.stage = fase_1
partido_7.stage = fase_1
partido_8.stage = fase_1
fase_1.save





partido_1.save
partido_2.save
partido_3.save
partido_4.save
partido_5.save
partido_6.save
partido_7.save
partido_8.save














partido_34.save
partido_35.save
partido_36.save
partido_37.save
partido_38.save
partido_39.save
partido_40.save
partido_41.save






partido_42.stage = fase_3
partido_43.stage = fase_3 
partido_44.stage = fase_3
partido_45.stage = fase_3
partido_46.stage = fase_3
partido_47.stage = fase_3
partido_48.stage = fase_3
partido_49.stage = fase_3

fase_3.save




partido_17.save
partido_18.save
partido_19.save
partido_20.save
partido_21.save
partido_22.save
partido_23.save
partido_24.save