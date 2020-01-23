class SessionsController < ApplicationController
  def new
  end

  def create
    if auth_hash = request.env["omniauth.auth"]
     oauth_email = request.env["omniauth.auth"]["email"]
      if user = User.find_by(:email => oauth_email)
        session[:user_id]= user.id
        else
          user = User.create(:email => oauth_email)
          if user.save
            session[:user_id]= user.id 
            @user = user
            redirect_to @user
        end
        else   
          user = User.find_by(username: params[:username])
          if user = user.try(:authenticate, params[:password])
            return redirect_to(controller: 'sessions', action: 'new') unless user
            session[:user_id] = user.id
            @user = user
            redirect_to @user 
        end
     end
  end

  def destroy
    session.delete :user_id
    redirect_to 'welcome', action: 'home'
  end
end
