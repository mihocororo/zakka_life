class Public::LikesController < ApplicationController
    # before_action :set_post_shop
    before_action :authenticate_customer!   # ログイン中のユーザーのみに許可（未ログインなら、ログイン画面へ移動）

  # お気に入り登録
  def create
    @post_shop = PostShop.find(params[:post_shop_id])
    @like = @post_shop.likes.new(customer_id: current_customer.id)
    if @like.save
      redirect_to request.referer
    else
      redirect_to request.referer
    end
  end

  def destroy
    @post_shop = PostShop.find(params[:post_shop_id])
    like = @post_shop.likes.find_by(customer_id: current_customer.id)
    if like.present?
        like.destroy
        redirect_to request.referer
    else
        redirect_to request.referer
    end
  end

  # private
  # def set_post_shop
  #   @post_shop = PostShop.find(params[:PostShop_id])
  # end
end
