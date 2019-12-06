class TentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]
  def index
    # Display ALL Tents on index page
    @tents = Tent.geocoded # returns flats with coordinates
    if params[:query].present?
      if Tent.where(address: params[:query]).empty?
        @tents = Tent.all
      else
        @tents = Tent.where(address: params[:query])
      end
    else
      @tents = Tent.all
    end

    @markers = @tents.map do |tent|
      {
        lat: tent.latitude,
        lng: tent.longitude
      }
    end
  end

  def show
    # Show PDP of single Tent using params :id
    @tent = Tent.find(params[:id])
    @booking = Booking.new

    @marker =
      [{
        lat: @tent.latitude,
        lng: @tent.longitude
      }]
  end

  def new
    @tent = Tent.new
  end

  def create
    @tent = Tent.new(tent_params)
    @tent.user = current_user
    if @tent.save
      redirect_to tent_path(@tent)
    else
      render :new
    end
  end

  private

  def tent_params
    params.require(:tent).permit(:title, :description, :address, :photo, :price, :photo_cache)
  end
end
