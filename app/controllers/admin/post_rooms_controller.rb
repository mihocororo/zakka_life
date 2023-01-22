class Admin::PostRoomsController < ApplicationController
  def show
  end

  def update
  end

  def index
    @post_rooms = PostRoom.all
  end
end
