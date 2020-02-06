class PagesController < ActionController::Base
  #before_action :current_user

  def search
    # if @parameter = params[:search].blank?
    # redirect_to(current_user.user_path, notice: "no results")
    # else
    @parameter = params[:search]
    @results = User.all.where("lower(name) LIKE :search", search: @parameter)
    # end
  end

  def show
  end
  
  end
