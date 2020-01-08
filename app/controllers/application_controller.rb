class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
  
    binding.pry 
    
    def current_user
      @user = (User.find_by(id: session[:user_id]) || User.new)
    end
  
    def logged_in?
      current_user.id != nil
    end
  
    def require_logged_in
      return redirect_to(controller: 'sessions', action: 'new') unless logged_in?
    end
  end
