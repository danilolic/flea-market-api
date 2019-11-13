# frozen_string_literal: true

class ListingsController < ApplicationController
  load_and_authorize_resource
  before_action :set_listing, only: %i[show update destroy]

  # GET /listings
  def index
    @listings = if params[:my_listings]
                  current_user.listings
                else
                  Listing.all
                end

    respond_with @listings
  end

  # GET /listings/1
  def show
    respond_with @listing
  end

  # POST /listings
  def create
    @listing = current_user.listings.build(listing_params)

    if @listing.save
      render 'listings/show.json', status: :created
    else
      render json: @listing.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /listings/1
  def update
    if @listing.update(listing_params)
      render 'listings/show.json', status: :ok
    else
      render json: @listing.errors, status: :unprocessable_entity
    end
  end

  # DELETE /listings/1
  def destroy
    @listing.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_listing
    @listing = Listing.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def listing_params
    params.require(:listing).permit(:title, :description, :kind, :price, :avatar)
  end
end
