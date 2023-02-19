class Admin::PostShopsController < ApplicationController
  before_action  :authenticate_admin!
  def show
    @post_shop = PostShop.find(params[:id])
  end

  def update
  end


  def index
    @post_shops = PostShop.all

  end
end
