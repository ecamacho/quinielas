class CalendarController < ApplicationController
	before_filter :denegar_acceso, :unless => :current_user
	
	def index
		if @current_user.quinielas.length == 0 
			redirect_to url_for(:controller => :quinielas, :action => :new) 
		else 
			jornada = params["jornada"]
			logger.info "jornada #{jornada}"
			if not jornada
				jornada = 1
			end
			fase = Stage.find_by id: jornada 
			logger.info "fase: #{fase.inspect}"
			partidos_hash={}
			fase.games.each do |partido|
			llave = "#{partido.fecha.strftime("%d-%m")}-#{partido.local.group.nombre}"
			logger.info llave
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
end
