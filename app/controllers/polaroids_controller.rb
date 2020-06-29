class PolaroidsController < ApplicationController
  before_action :set_polaroid, only: [:show, :edit, :update, :destroy]

  def index
    @polaroids = Polaroid.all
  end

  def new
    @polaroid = Polaroid.new
  end
  
  def create
    @polaroid = Polaroid.new(polaroid_params)
    if @polaroid.save
      redirect_to @polaroid
    end
  end

  def show
  end

  def edit
  end

  def update
    if @polaroid.update(polaroid_params)
      redirect_to @polaroid
    end
  end

  private

    def set_polaroid
      @polaroid = Polaroid.find(params[:id])
    end

    def polaroid_params
      params.require(:polaroid).permit(:title, :comment, :image)
    end
end
