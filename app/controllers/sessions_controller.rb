class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to controller: 'users', action: 'home'
    else
      redirect_to '/signin'
  end
end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end
end