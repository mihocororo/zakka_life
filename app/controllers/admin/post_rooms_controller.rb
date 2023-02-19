class Admin::PostRoomsController < ApplicationController
  before_action  :authenticate_admin!
  def show
  end

  def update
  end

  def index
    @post_rooms = PostRoom.all
  end
end
