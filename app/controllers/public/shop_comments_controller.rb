class Public::ShopCommentsController < ApplicationController
  def index
    @shop_comments = ShopComment.all
  end

  def update
  end

  def show

  end

  def new
    @shop_comment = ShopComment.new
    # @shop_comment.save
    # redirect_to '/shops'
  end

  def create
  @shop_comment = ShopComment.new(shop_comment_params)
    if @shop_comment.save!
      redirect_to shop_comments_path
    else
      redirect_to new_shop_path
    end
  end

  def edit
  end
  private
  def shop_comment_params
    params.require(:shop_comment).permit(:title, :learn, :about, :category, :star)
  end
end
