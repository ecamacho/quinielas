class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  def current_quiniela
    @current_quiniela ||= Quiniela.find(session[:quiniela_id]) if session[:quiniela_id]
  end 

  def denegar_acceso
  	redirect_to url_for(:controller => :login, :action => :index)
  end

  helper_method :current_user
  helper_method :denegar_acceso

end

