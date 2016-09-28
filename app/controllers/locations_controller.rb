class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  def index
    @trip = Trip.find(params[:trip_id])
  end

  def show
  end

  def new
    @trip = Trip.find(params[:trip_id])
    @location = @trip.locations.new
  end

  def edit
  end

  def create
    @trip = Trip.find(params[:trip_id])
    @location = @trip.locations.new(location_params)
    if @location.save
      redirect_to @trip
    else
      render :new
    end
  end

  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to @location, notice: 'Location was successfully updated.' }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @location.destroy
    respond_to do |format|
      format.html { redirect_to locations_url, notice: 'Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_location
      @location = Location.find(params[:id])
    end

    def location_params
      params.require(:location).permit(:latitude, :longitude, :trip_id, :address)
    end
end
