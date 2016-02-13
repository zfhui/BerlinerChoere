class HomeController < ApplicationController

  def index
    @choirs = Choir.all.where(approved: true)
    @categories = Category.all.order(:name)
  end

end
