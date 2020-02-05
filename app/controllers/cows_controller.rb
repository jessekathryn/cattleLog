class CowsController < ApplicationController
  before_action :set_cow, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?

  def index
    binding.pry
      @cows = Cow.all
  end

  def show
    @cow = Cow.find(params[:id])
  end

  def new
    @cows = Cow.new(params[:id])
  end

  def edit
  end

  def create
    if logged_in?
      @cow = Cow.new(cow_params)
      if @cow.save
        redirect_to @cow
      else
        render :new
      end
    end
  end
  

  def update
    @cow = Cow.find(params[:id])
    if @cow.update(cow_params)
      redirect_to @cow
    else
      render :new
    end
  end

  def destroy
    @cow = Cow.find_by(:id => params[:id])
    @cow.destroy
    redirect_to cows_url
  end

  private
    def set_cow
      @cow = Cow.find(params[:id])
    end

    def cow_params
      params.require(:cow).permit(:id, :name, :tag_number, :cow_status, :age, :birthdate, :weight, :health, :color, :user_id, :notes, :field_name, :field_id)
    end
end
