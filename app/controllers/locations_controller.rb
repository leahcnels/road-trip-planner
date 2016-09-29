class LocationsController < ApplicationController

  def index
    @trip = Trip.find(params[:trip_id])
  end

  def new
    @trip = Trip.find(params[:trip_id])
    @location = @trip.locations.new
  end

  def create
    @trip = Trip.find(params[:trip_id])
    @location = @trip.locations.new(location_params)
    if @location.save
      respond_to do |format|
        format.html { redirect_to @trip }
        format.json
      end
    else
      render :new
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @trip = Trip.find(params[:trip_id])
    @location.destroy
    respond_to do |format|
      format.html { redirect_to trip_path(@trip), notice: 'Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def location_params
      params.require(:location).permit(:latitude, :longitude, :trip_id, :address)
    end
end
