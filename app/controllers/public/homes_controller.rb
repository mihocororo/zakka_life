class Public::HomesController < ApplicationController
  def top
    @areas = Area.all
  end
  def about
    render 'about',layout: nil
  end
  def homes_params
    params.require(:home).permit(:area_id)
  end
end
