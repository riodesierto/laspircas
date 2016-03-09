class VisitorsController < ApplicationController
	before_action :authenticate_user!
  before_action :admin_only, except: [:index, :edit, :update]

  def index
    @visitors = Visitor.sorted.paginate(:page => params[:page], :per_page => 5)
  end

  def show
    @visitor = Visitor.find(params[:id])
  end

  def new
    @visitor = Visitor.new

  end

  def create
    @visitor = Visitor.new(visitor_params)
    if @visitor.save
      flash[:notice] = "visitore creado satisfactoriamente."
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @visitor = Visitor.find(params[:id])
    @visitor.autorized_by = current_user.name
  end

  def update
    @visitor = Visitor.find(params[:id])
    @visitor.autorized_by = current_user.name
    if @visitor.update_attributes(visitor_params)
      flash[:notice] = "visitore modificado satisfactoriamente."
      redirect_to(:action => 'index')
    else
      render('edit')
    end
  end


  def delete
    @visitor = Visitor.find(params[:id])
  end

  def destroy
    visitor = Visitor.find(params[:id]).destroy
    flash[:notice] = "visitore '#{visitor.name}' eliminado satisfactoriamente."
    redirect_to(:action => 'index')
  end

  def busqueda
    
  end

  def results
    
  end

  private

    def admin_only
      unless current_user.admin?
        redirect_to :back, :alert => "Access denied."
      end
    end

    def visitor_params
      params.require(:visitor).permit(:resident_id, :name, :rut, :patente, :autorized_by, :search)
    end


    def find_resident
      if params[:resident_id]
        @resident = Resident.find(params[:resident_id])
      end
    end
	
end
