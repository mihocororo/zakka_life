class Admin::AreasController < ApplicationController
  def index
    @area = Area.new
    @areas = Area.all
  end

  def create
    @area = Area.new(area_params)
    if @area.save
      redirect_to '/admin/areas'
    else

    end
  end

  def edit
    @area = Area.find(params[:id])
  end

  def update
    @area = Area.find(params[:id])
    if @area.update(area_params)
    redirect_to '/admin/areas'
    else
    render 'edit'
    end

  end

  private
  def area_params
    params.require(:area).permit(:name)
  end

end
