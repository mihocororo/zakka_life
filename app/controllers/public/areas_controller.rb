class Public::AreasController < ApplicationController
  def index

    @post_shops = PostShop.all
    @areas = Area.all

    # if params[:area_id].present?
      # params[:category_id]
      @area = Area.find(params[:id])
      @post_shops = @area.post_shops
    # end
  end




   private
  def area_params
    params.require(:area).permit(:name)
  end
end
