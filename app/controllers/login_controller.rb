class LoginController < ApplicationController
	def index
	end
 def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to url_for(:controller => :calendar, :action => :index)
  end

  def destroy
    session[:user_id] = nil
    redirect_to url_for(:controller => :calendar, :action => :index)
  end
end

