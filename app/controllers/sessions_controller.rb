class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if auth_hash = request.env["omniauth.auth"]
     user = User.find_or_create_by_omniauth(auth_hash)
        session[:user_id] = user.id
        @user = user
        redirect_to user
      else
          user = User.find_by(username: params[:user][:username])
          user = user.try(:authenticate, params[:user][:password])
            return redirect_to(controller: 'sessions', action: 'new', notice: "Invalid username/password combination") unless user
          session[:user_id] = user.id
          @user = user
          redirect_to @user 
      end
  end

  def destroy
    session.delete :user_id
    redirect_to 'welcome', action: 'home'
  end
end
