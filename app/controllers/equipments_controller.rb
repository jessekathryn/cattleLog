class equipmentsController < ApplicationController
    before_action :set_equipment, only: [:show, :edit, :update, :destroy]
    before_action :current_user
  
  
    def index
      @equipments = Equipment.all
    end
  
  
    def show
    end
  
    def new
      @equipment = Equipment.new
    end
  
    def edit
    end
  
    def create
      @equipment = Equipment.new(equipment_params)
  
        if @equipment.save
          redirect_to @equipment
        else
          render :new
      end
    end
  
    def update
        if @equipment.update(equipment_params)
          redirect_to @equipment
        else
          render :edit 
        end
    end
  
  
    def destroy
      @equipment.destroy
        redirect_to equipments_url
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_equipment
        @equipment = Equipment.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def equipment_params
        params.require(:equipment).permit(:equipment_name, :cow_id, :crop, :coordinates, :user_id)
      end
  end