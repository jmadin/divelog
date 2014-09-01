class TripsController < ApplicationController
  before_action :signed_in_user, only: [:show, :index, :edit, :update]
  before_action :admin_user,   only: [:destroy]
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  # GET /trips
  # GET /trips.json
  def index
    @trips = Trip.all
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
    @dives = @trip.dives.all
  end

  # GET /trips/new
  def new
    @trip = Trip.new
  end

  # GET /trips/1/edit
  def edit
  end

  # POST /trips
  # POST /trips.json
  def create
    @trip = Trip.new(trip_params)

    if @trip.save
      redirect_to @trip
      flash[:success] = "Trip was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    if @trip.update(trip_params)
      redirect_to @trip
      flash[:success] = "Trip was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip.destroy
    respond_to do |format|
      format.html { redirect_to trips_url, notice: 'Trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit(:trip_name, :trip_organistion, :trip_category, :start_date, :end_date, :description, :udo, :signed)
    end
end
