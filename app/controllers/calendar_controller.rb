class CalendarController < ApplicationController
	before_filter :denegar_acceso, :unless => :current_user
	
	def index
		if @current_user.quinielas.length == 0 
			redirect_to url_for(:controller => :quinielas, :action => :new) 
		else
			 

			jornada = params["jornada"]
			quiniela_id = params["quiniela"]
			logger.info "jornada #{jornada}"

			
			if not quiniela_id 
				quiniela_id =@current_user.quinielas.first.id
			end
			 session[:quiniela_id] = quiniela_id


			if not jornada
				jornada = 1
			end
			puts "____________________________"
			puts "imprime #{quiniela_id}"

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








			@jornadas = Stage.all
			@partidos = partidos_hash.to_a.sort!
		
			@quinielas = Quiniela.where user_id:@current_user.id
			puts "#{@quinielas.length}"
			puts ":::::::::::::::::::::::::::"
			puts "#{current_user.id}"
			@jornada_id = jornada



			@tabla = Game.where('stage_id=? and jugado=?',  1, true)
			@quinielass = Apuesta.where("user_id=? and quiniela_id=? and stage_id=?", @current_user.id, current_quiniela.id, fase.id)
			puts "***************************"
			puts "imprime #{@quinielass}"
			puts "current_quiniela #{current_quiniela.id}"
			



			@apuestas_hash ={}
			@quinielass.each do |quiniela|
				llave = quiniela.game_id
				logger.info llave
				
				@apuestas_hash[llave] = quiniela
			
			end 
			puts "____________********"
			puts "#{@apuestas_hash.length}"

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
