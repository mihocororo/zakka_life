class Admin::HomesController < ApplicationController
  def top
    @customers = Customer.all
    
  end
  private
  
end
