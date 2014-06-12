class CalendarController < ApplicationController
	def index
		fase = Stage.find_by fase: "Jornada 1"
		puts "fase: #{@fase.inspect}"
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

	end
end
