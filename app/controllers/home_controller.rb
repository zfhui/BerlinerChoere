class HomeController < ApplicationController

  def index
    @choirs = Choir.all
  end


end
