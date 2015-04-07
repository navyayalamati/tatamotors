class DealerLocationsController < ApplicationController
  before_action :set_dealer_location, only: [:show, :edit, :update, :destroy]

  # GET /dealer_locations
  # GET /dealer_locations.json
  def index
    @dealer_locations = DealerLocation.all
    locations = []
  
        
    gmap_data = Gmaps4rails.build_markers(@dealer_locations) do |location, marker|
      marker.lat  location.latitude
      marker.lng  location.longitude
   
    end
    gon.gmap_data = gmap_data.to_json
    gon.width = "700px"
    gon.height = "700px"
    
  end

  # GET /dealer_locations/1
  # GET /dealer_locations/1.json
  def show
  end

  # GET /dealer_locations/new
  def new
    @dealer_location = DealerLocation.new
  end

  # GET /dealer_locations/1/edit
  def edit
  end

  # POST /dealer_locations
  # POST /dealer_locations.json
  def create
    @dealer_location = DealerLocation.new(dealer_location_params)

    respond_to do |format|
      if @dealer_location.save
        format.html { redirect_to @dealer_location, notice: 'Dealer location was successfully created.' }
        format.json { render :show, status: :created, location: @dealer_location }
      else
        format.html { render :new }
        format.json { render json: @dealer_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dealer_locations/1
  # PATCH/PUT /dealer_locations/1.json
  def update
    respond_to do |format|
      if @dealer_location.update(dealer_location_params)
        format.html { redirect_to @dealer_location, notice: 'Dealer location was successfully updated.' }
        format.json { render :show, status: :ok, location: @dealer_location }
      else
        format.html { render :edit }
        format.json { render json: @dealer_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dealer_locations/1
  # DELETE /dealer_locations/1.json
  def destroy
    @dealer_location.destroy
    respond_to do |format|
      format.html { redirect_to dealer_locations_url, notice: 'Dealer location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dealer_location
      @dealer_location = DealerLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dealer_location_params
      params.require(:dealer_location).permit(:country, :name_of_setup, :city, :tel_no, :category, :latitude, :longitude)
    end
end
