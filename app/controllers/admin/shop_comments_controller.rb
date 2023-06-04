class Admin::ShopCommentsController < ApplicationController



  def destroy
    shop_comment = ShopComment.find(params[:id])
    shop_comment.destroy
    redirect_to '/admin/customers'
  end
  private
  def shop_comment_params
    params.require(:shop_comment).permit(:title, :learn, :about, :category, :rate,:post_shop_id,:comment)
  end
end
