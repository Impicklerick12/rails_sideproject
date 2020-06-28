class PolaroidsController < ApplicationController

  before_action :authenticate_user!
  
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
    puts params
  end

  def edit
    @polaroid = session[:polaroids][params[:id].to_i - 1]
  end

  def update
    session[:polaroids][params[:id].to_i - 1] = params[:polaroid]
    redirect_to polaroid_path(params[:id].to_i)
  end
end
