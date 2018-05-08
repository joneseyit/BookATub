class Api::V1::ListingsController < ApplicationController

	def index
		@listings = Listing.all
	end

	def show
		@listing = Listing.find(params[:id])
	end

	def edit
		@listing = Listing.find(params[:id])
	end

	def create
		@listing = Listing.new
		if # xyz
			@listing.save
		else
			render :new
		end
	end

	def update
		@listing = Listing.find(params[:id])
	end

	private 

	def listings_params
		params.require(:).permit(:)
	end
end