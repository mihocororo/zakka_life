class Public::PostRoomsController < ApplicationController
  def index
    @post_rooms = PostRoom.all

  end

  def update
  end

  def destroy
  end

  def create
    @post_room = PostRoom.new(post_room_params)
    @post_room.customer_id = current_customer.id

    if @post_room.save!
      redirect_to rooms_path(@post_room)
    else
      redirect_to new_room_path
    end


  end

  def destroy_all
  end

  def new
    @post_room = PostRoom.new
  end
   private
  def post_room_params
    params.require(:post_room).permit(:name, :comment, :image,:customer_id)
  end
end
