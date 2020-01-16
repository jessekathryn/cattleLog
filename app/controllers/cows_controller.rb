class CowsController < ApplicationController
  before_action :set_cow, only: [:show, :edit, :update, :destroy]
  before_action :current_user

  # GET /cows
  # GET /cows.json
  def index
    @cows = Cow.all
  end

  # GET /cows/1
  # GET /cows/1.json
  def show
  end

  # GET /cows/new
  def new
    @cow = Cow.new
  end

  # GET /cows/1/edit
  def edit
  end

  # POST /cows
  # POST /cows.json
  def create
    @cow = Cow.new(cow_params)

    respond_to do |format|
      if @cow.save
        format.html { redirect_to @cow, notice: 'Expense was successfully created.' }
        format.json { render :show, status: :created, location: @cow }
      else
        format.html { render :new }
        format.json { render json: @cow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cows/1
  # PATCH/PUT /cows/1.json
  def update
    @cow = Cow.find(params[:id])
  end

  # DELETE /cows/1
  # DELETE /cows/1.json
  def destroy
    @cow.destroy
    render :index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cow
      @cow = Cow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cow_params
      params.require(:cow).permit(:id, :name, :tag_number, :cow_status, :age, :birthdate, :weight, :health, :color, :user_id, :notes, :field_id)
    end
end
