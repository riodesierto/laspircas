class ResidentsController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_only, :except => :show

  def index
    @residents = Resident.all
  end

  def show
    @resident = Resident.find(params[:id])
  end

  def new
    @resident = Resident.new

  end

  def create
    @resident = Resident.new(resident_params)
    if @resident.save
      flash[:notice] = "residente creado satisfactoriamente."
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @resident = Resident.find(params[:id])
  end

  def update
    @resident = Resident.find(params[:id])
    if @resident.update_attributes(resident_params)
      flash[:notice] = "residente modificado satisfactoriamente."
      redirect_to(:action => 'show', :id => @resident.id)
    else
      render('edit')
    end
  end


  def delete
    @resident = Resident.find(params[:id])
  end

  def destroy
    resident = Resident.find(params[:id]).destroy
    flash[:notice] = "residente '#{resident.address}' eliminado satisfactoriamente."
    redirect_to(:action => 'index')
  end

  private

    def admin_only
      unless current_user.admin?
        redirect_to :back, :alert => "Access denied."
      end
    end

    def resident_params
      params.require(:resident).permit(:address)
    end
	
end
