class MusterLocationsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_muster_location, only: [:show, :edit, :update, :destroy]

  # GET /muster_locations
  # GET /muster_locations.json
  def index
    @muster_locations = MusterLocation.all
  end

  # GET /muster_locations/1
  # GET /muster_locations/1.json
  def show
    @employees = MusterLocation.find(params[:id]).employees
  end

  # GET /muster_locations/new
  def new
    @muster_location = MusterLocation.new
  end

  # GET /muster_locations/1/edit
  def edit
  end

  # POST /muster_locations
  # POST /muster_locations.json
  def create
    @muster_location = MusterLocation.new(muster_location_params)

    respond_to do |format|
      if @muster_location.save
        format.html { redirect_to @muster_location, notice: 'Muster location was successfully created.' }
        format.json { render :show, status: :created, location: @muster_location }
      else
        format.html { render :new }
        format.json { render json: @muster_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /muster_locations/1
  # PATCH/PUT /muster_locations/1.json
  def update
    respond_to do |format|
      if @muster_location.update(muster_location_params)
        format.html { redirect_to @muster_location, notice: 'Muster location was successfully updated.' }
        format.json { render :show, status: :ok, location: @muster_location }
      else
        format.html { render :edit }
        format.json { render json: @muster_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /muster_locations/1
  # DELETE /muster_locations/1.json
  def destroy
    @muster_location.destroy
    respond_to do |format|
      format.html { redirect_to muster_locations_url, notice: 'Muster location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_muster_location
      @muster_location = MusterLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def muster_location_params
      params.require(:muster_location).permit(:name)
    end
end
