class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(username: params[:user][:username])
      user = user.try(:authenticate, params[:user][:password])
        return redirect_to(controller: 'sessions', action: 'new') unless user
        session[:user_id] = user.id
      @user = user
    redirect_to @user 
  end

  def destroy
    session.delete :user_id
    redirect_to 'welcome', action: 'home'
  end  
end