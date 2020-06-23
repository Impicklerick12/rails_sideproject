class PolaroidsController < ApplicationController

  def index
    @polaroids = session[:polaroids]
  end

  def new
  end
  
  def create
    if session[:polaroids] == nil
      session[:polaroids] = []
    end
    session[:polaroids].push(params[:polaroid])

    redirect_to polaroid_path(session[:polaroids].length)
  end

  def show
    @polaroid = session[:polaroids][params[:id].to_i - 1]
  end

  def edit
  end
end
