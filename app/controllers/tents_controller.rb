class TentsController < ApplicationController

  def index
    @tents = Tent.all
  end

  def show
  end

  def new
  end

  def create
  end

end
