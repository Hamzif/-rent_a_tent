class BookingsController < ApplicationController
  # create a new booking that has an user_id and a tent_id and display it on a show page
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @tent = Tent.find(params[:tent_id])
    @booking.tent = @tent
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'tents/show'
    end
  end

  def show
    # Show PDP Confirmation of single Tent using params :tent_id
    @booking = Booking.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
