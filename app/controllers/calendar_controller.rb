class CalendarController < ApplicationController
	
	def index
		jornada = params["jornada"]
		puts "jornada #{jornada}"
		if not jornada
			jornada = 1
		end
		fase = Stage.find_by id: jornada 
		puts "fase: #{fase.inspect}"
		partidos_hash={}
		fase.games.each do |partido|
			llave = "#{partido.fecha.strftime("%d-%m")}-#{partido.local.group.nombre}"
			puts llave
			if partidos_hash[llave]
				array = partidos_hash[llave]
				array << partido 
			else
				partidos_hash[llave] = [partido]
			end
		end
		@partidos = partidos_hash.to_a.sort!
		
		@jornadas = Stage.all

		@tabla = Game.where('stage_id=? and jugado=?',  1, true) 
	end
end
