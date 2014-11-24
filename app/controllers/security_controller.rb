class SecurityController < ApplicationController
  def index
  end

  def login	
  	if validate(params[:username], params[:password])
  		redirect_to students_path
  	else
  		redirect_to controller: 'security', action: 'index'
  	end
  end

  def logout
  	session.destroy
  	redirect_to root_path
  end

  def validate(username,password)
  	if User.where(username: username, password: password).last.nil?
  		false
  	else
  		user = User.where(username: username, password: password).last
  		session[:user_id] = user.id
  		session[:status] = true
  		return true
  	end
  end
end
