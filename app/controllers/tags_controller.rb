class TagsController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_only, :except => :show

  def index
    @tags = Tag.all.paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def new
    @tag = Tag.new

  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      flash[:notice] = "Tag creado satisfactoriamente."
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])
    if @tag.update_attributes(tag_params)
      flash[:notice] = "Tag modificado satisfactoriamente."
      redirect_to(:action => 'show', :id => @tag.id)
    else
      render('edit')
    end
  end


  def delete
    @tag = Tag.find(params[:id])
  end

  def destroy
    tag = Tag.find(params[:id]).destroy
    flash[:notice] = "Tag '#{tag.tag_value}' eliminado satisfactoriamente."
    redirect_to(:action => 'index')
  end

  private

    def admin_only
      unless current_user.admin?
        redirect_to :back, :alert => "Access denied."
      end
    end

    def tag_params
      params.require(:tag).permit(:resident_id, :tag_value)
    end
	
end
