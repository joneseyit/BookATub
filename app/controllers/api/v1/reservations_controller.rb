class Api::V1::ReservationsController < ApplicationController
  before_action :find_reservation, only: [:show, :destroy, :update]

  #CRUD Methods
  def index
    @reservations = Reservation.all
    render json: @reservations
  end

  def show
    render json: @reservation
  end

  def update
    @reservation.update(reservation_params)
  end

  def create
    @reservation = Reservation.new(reservation_params)
  end

  def destroy
    @reservation.destroy
  end


  #Private methods
  private

  def reservation_params
    params.permit(:guest_id, :listing_id, :date_time)
  end

  def find_reservation
    @reservation = Reservation.find(params[:id])
  end
end
