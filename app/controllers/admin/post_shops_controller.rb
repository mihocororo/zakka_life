class Admin::PostShopsController < ApplicationController
  def show
    @post_shop = PostShop.find(params[:id])
  end

  def update
  end

  def index
    @post_shops = PostShop.all

  end
end
