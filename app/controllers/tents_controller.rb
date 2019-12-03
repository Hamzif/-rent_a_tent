class TentsController < ApplicationController
  def index
    @tents = Tent.all
  end

  def show
  end

  def new
    @tent = Tent.new
  end

  def create
    @tent = Tent.new(tent_params)
    if @tent.save
      redirect_to tent_path(@tent)
    else
      render :new
    end
  end

  private

  def tent_params
    params.require(:tent).permit(:title, :description, :address, :photo, :price)
  end
end
