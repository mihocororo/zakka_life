class Public::AreasController < ApplicationController
  def index

    @post_shops = PostShop.all
    @areas = Area.all

    # if params[:area_id].present?
      #presentメソッドでparams[:category_id]に値が含まれているか確認 => trueの場合下記を実行
      # @area = Area.find(params[:area_id])
      # @post_shops = @area.post_shops
    # end
  end




   private
  def area_params
    params.require(:area).permit(:name)
  end
end
