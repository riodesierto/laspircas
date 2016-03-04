class PlatesController < ApplicationController
	before_action :authenticate_user!
  before_action :admin_only, :except => :index

  def index
    @plates = Plate.all
  end

  def show
    @plate = Plate.find(params[:id])
  end

  def new
    @plate = Plate.new

  end

  def create
    @plate = Plate.new(plate_params)
    if @plate.save
      flash[:notice] = "Registro creado satisfactoriamente."
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @plate = Plate.find(params[:id])
  end

  def update
    @plate = Plate.find(params[:id])
    if @plate.update_attributes(plate_params)
      flash[:notice] = "Registro modificado satisfactoriamente."
      redirect_to(:action => 'index')
    else
      render('edit')
    end
  end


  def delete
    @plate = Plate.find(params[:id])
  end

  def destroy
    plate = Plate.find(params[:id]).destroy
    flash[:notice] = "Registro '#{plate.name}' eliminado satisfactoriamente."
    redirect_to(:action => 'index')
  end

  private

    def admin_only
      unless current_user.admin?
        redirect_to :back, :alert => "Access denied."
      end
    end

    def plate_params
      params.require(:plate).permit(:tag_value, :plate, :antenna, :filename)
    end


    def find_resident
      if params[:resident_id]
        @resident = Resident.find(params[:resident_id])
      end
    end
	
end
