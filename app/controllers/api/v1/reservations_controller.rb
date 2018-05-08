class Api::V1::ReservationsController < ApplicationController
  before_action


  def index
    @reservations = Reservation.all
    render json: @reservations
  end

  private

  def reservation_params
    params.permit(:guest_id, :listing_id, :date_time)
  end

  def find_reservation
    @reservation = Reservation.find(params[:id])
  end
end
