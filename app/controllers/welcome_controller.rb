class WelcomeController < ApplicationController 
    
    def home
        render :layout => false
    end
end