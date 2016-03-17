class VisitorsController < ApplicationController
	before_action :authenticate_user!
  before_action :admin_only, except: [:index, :edit, :update]

  def index
    @visitors = Visitor.sorted.paginate(:page => params[:page], :per_page => 20)
  end

  def show
    @visitor = Visitor.find(params[:id])
  end

  def new
    @visitor = Visitor.new
    @visitor.autorized_by = current_user.name
  end

  def create
    @visitor = Visitor.new(visitor_params)
    @visitor.autorized_by = current_user.name
    save_image
    if @visitor.save
      save_image
      getplate
      @visitor.filename = "/plates/#{@visitor.id}.jpg"
      @visitor.save
      flash[:notice] = "Información de Visita creada satisfactoriamente."
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit   
    @visitor = Visitor.find(params[:id])
    save_image
    @visitor.filename = "/plates/#{@visitor.id}.jpg"
    getplate
    @visitor.autorized_by = current_user.name
  end

  def update
    @visitor = Visitor.find(params[:id])
    @visitor.autorized_by = current_user.name
    @visitor.filename = "/plates/#{@visitor.id}.jpg"
    if @visitor.update_attributes(visitor_params)
      flash[:notice] = "Información de Visita modificada satisfactoriamente."
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
    flash[:notice] = "Información de Visita '#{visitor.patente}' eliminada satisfactoriamente."
    redirect_to(:action => 'index')
  end

  private

    def admin_only
      unless current_user.admin?
        redirect_to :back, :alert => "Access denied."
      end
    end

    def visitor_params
      params.require(:visitor).permit(:resident_id, :patente, :autorized_by, :filename, :antenna)
    end


    def find_resident
      if params[:resident_id]
        @resident = Resident.find(params[:resident_id])
      end
    end

    def save_image
      @archivo = "#{Rails.root}/public/plates/#{@visitor.id}.jpg"
      #@archivo = "public/plates/#{@visitor.id}.jpg"
      if @visitor.antenna == 1
        IO.copy_stream(open('http://servidorlaspircas.no-ip.info:85/jpg/image.jpg'), @archivo)
      else
        IO.copy_stream(open('http://servidorlaspircas.no-ip.info:84/jpg/image.jpg'), @archivo)
      end
    end

    def getplate
      @placa = %x[/home/pedro/impinj_ltk/bin/getplate #{@visitor.id} #{Rails.root}/public/plates/#{@visitor.id}.jpg]
      if @placa.blank?
        @placa = "ingresar patente"
      end
    end
	
end
