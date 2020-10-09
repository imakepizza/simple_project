class AccessController < ApplicationController
  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]
  def menu
  	#text + links
  end

  def login
  	#form
  end
  def attempt_login
  	if params[:username].present? && params[:password].present?
  		found_user = AdminUser.where(:username => params[:username]).first
  		if found_user
  			authorized_user = found_user.authenticate(params[:password])
  		end	

  		if authorized_user
  			session[:user_id] = authorized_user.id
  			flash[:notice] = "logged"
  			redirect_to(admin_path)
  		else
  			flash.now[:notice] = "wrong"
  			render('login')
  		end
  end
  end

  def logout
  	session[:user_id] = nil
  	flash[:notice] = 'Loogged out'
  	redirect_to(access_login_path)

  end

  
end
