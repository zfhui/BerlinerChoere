class HomeController < ApplicationController

  def index
    @choirs = Choir.all
    @categories = Category.all.order(:name)
  end


end
