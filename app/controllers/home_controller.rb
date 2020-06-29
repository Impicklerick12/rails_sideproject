class HomeController < ApplicationController
  def index
    @polaroids = Polaroid.all
  end
end
