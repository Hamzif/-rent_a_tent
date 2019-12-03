class TentsController < ApplicationController

  def index
    # Display ALL Tents on index page
    @tents = Tent.all
  end

  def show
    # Show PDP of single Tent using params :id
    @tent = Tent.find(params[:id])
  end

  def new
  end

  def create
  end

end
