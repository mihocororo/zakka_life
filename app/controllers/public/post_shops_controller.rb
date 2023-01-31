class Public::PostShopsController < ApplicationController
  def index
    @post_shops = PostShop.all

    @area = Area.all
    if params[:area_id].present?
      #presentメソッドでparams[:category_id]に値が含まれているか確認 => trueの場合下記を実行
      @area = Area.find(params[:area_id])
      @post_shops = @area.post_shops
    end


    # @customer = Customer.find(params[:id])

  end

  def show
    @post_shop = PostShop.find(params[:id])

  end

  def create
    @post_shop = PostShop.new(post_shop_params)
    @post_shop.customer_id = current_customer.id

    if @post_shop.save!
      redirect_to shops_path(@post_shop)
    else
      redirect_to new_shop_path
    end
  end

  def update
  end

  def destroy
  end

  def destroy_all
  end

  def new
    @post_shop = PostShop.new


  end

  private
  def post_shop_params
    params.require(:post_shop).permit(:image, :area_id, :name, :introduction, :is_active, :nickname,:customer_id)
  end
end
