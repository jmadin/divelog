class DivesController < ApplicationController
  before_action :signed_in_user, only: [:show, :index, :edit, :update, :destroy]
  before_action :correct_diver,   only: [:edit, :update, :destroy]
  before_action :set_dive, only: [:show, :edit, :update, :destroy]

  # GET /dives
  # GET /dives.json
  def index
    @dives = Dive.all
  end

  # GET /dives/1
  # GET /dives/1.json
  def show
  end

  # GET /dives/new
  def new
    @dive = Dive.new
  end

  # GET /dives/1/edit
  def edit
  end

  # POST /dives
  # POST /dives.json
  def create
    @dive = Dive.new(dive_params)

    if @dive.save
      redirect_to @dive
      flash[:success] = "Dive was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /dives/1
  # PATCH/PUT /dives/1.json
  def update
    if @dive.update(dive_params)
      redirect_to @dive
      flash[:success] = "Dive was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /dives/1
  # DELETE /dives/1.json
  def destroy
    @dive.destroy
    respond_to do |format|
      format.html { redirect_to dives_url, notice: 'Dive was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dive
      @dive = Dive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dive_params
      params.require(:dive).permit(:organistion, :category_description, :dive_date, :dive_number, :site_location, :latitude, :longitude, :vessel, :tide, :weather, :air_temperature, :water_temperature, :wind, :current, :visiability, :conditions, :dive_type, :breathing_medium, :environment, :equipment, :tasks, :role, :air_in, :air_out, :time_in, :time_out, :surface_swim, :wet_time, :max_depth, :bottom_time, :no_decompression_limit, :surface_interval, :repeitive_factor, :effective_bottom_time, :repetitive_group, :safety_stop, :trip_id, :user_id, :dive_buddy, :signed, :dive_coordinator, :comments)
    end
end
