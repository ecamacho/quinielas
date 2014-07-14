class CalendarController < ApplicationController
	before_filter :denegar_acceso, :unless => :current_user
	
	def index
		if @current_user.quinielas.length == 0 
			redirect_to url_for(:controller => :quinielas, :action => :new) 
		else
			 session[:quiniela_id] = @current_user.quinielas.first.id

			jornada = params["jornada"]
			logger.info "jornada #{jornada}"
			puts "imprime #{current_quiniela}"
			if not jornada
				jornada = 1
			end
			session[:jornada_id] = jornada
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
			@quinielas = Quiniela.all


			@tabla = Game.where('stage_id=? and jugado=?',  1, true) 
		end

	end
	def save
		
		puts "-----------------------------------------"
		fase=Stage.find_by id:session[:jornada_id]
		params.each do |key, value|

  			if key.start_with?( 'partido_')

  				puts "#{key}"
  				partido_id=key[8..key.length-1]
  				partido=Game.find_by id:partido_id
  				apuesta=Apuesta.new 
  				apuesta.user = @current_user
  				apuesta.quiniela = current_quiniela
  				apuesta.stage=fase
  				apuesta.game=partido
  				apuesta.resultado=value
  				apuesta.save
  			end
  		end
		redirect_to action: 'index'


	end
end
