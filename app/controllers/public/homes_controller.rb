class Public::HomesController < ApplicationController
  def top
    @areas = Area.all
  end
  def about
  end
  def homes_params
    params.require(:home).permit(:area_id)
  end
end
