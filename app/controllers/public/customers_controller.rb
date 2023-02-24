class Public::CustomersController < ApplicationController
  def show
    @customer = current_customer
    @likes = Like.where(customer_id: current_customer.id)
    @shop_comments = ShopComment.where(customer_id: current_customer.id)
  end

  def edit
    @customer = current_customer
  end

  def update
    @customer = current_customer
    if @customer.update(customer_params)
      redirect_to "/my_page"
    else
      redirect_to "/admin"
    end
  end

  def unsubscribe
    @customer = current_customer
  end

  def withdraw
    @customer = current_customer
    @customer.update(is_deleted: true)
    reset_session
    flash[:notice] = "退会処理を実行いたしました"
    redirect_to '/'
  end
  def customer_params
    params.require(:customer).permit(:name, :nickname, :email)
  end
end
