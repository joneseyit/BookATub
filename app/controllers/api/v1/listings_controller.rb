class Api::V1::ListingsController < ApplicationController
  before_action :find_listing, only: [:show, :destroy, :update]

  #CRUD Methods
  def index
    @listings = Listing.all
    render json: @listings
  end

  def show
    render json: @listing
  end

  def create
    @listing = Listing.new(listing_params)
  end

  def update
    @listing.update(listing_params)
  end

  def destroy
    @listing.destroy
  end





  #Private methods
  private

  def listing_params
    params.permit(:host_id, :name, :picture, :description, :location)
  end

  def find_listing
    @listing = Listing.find(params[:id])
  end

end
