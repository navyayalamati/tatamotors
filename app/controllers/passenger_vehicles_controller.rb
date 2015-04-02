class PassengerVehiclesController < ApplicationController
  before_action :set_passenger_vehicle, only: [:show, :edit, :update, :destroy]

  # GET /passenger_vehicles
  # GET /passenger_vehicles.json
  def index
    @passenger_vehicles = PassengerVehicle.all
  end

  def description
    @passenger_vehicles = PassengerVehicle.all
  end

  # GET /passenger_vehicles/1
  # GET /passenger_vehicles/1.json
  def show
  end

  # GET /passenger_vehicles/new
  def new
    @passenger_vehicle = PassengerVehicle.new
  end

  # GET /passenger_vehicles/1/edit
  def edit
  end

  # POST /passenger_vehicles
  # POST /passenger_vehicles.json
  def create
    @passenger_vehicle = PassengerVehicle.new(passenger_vehicle_params)

    respond_to do |format|
      if @passenger_vehicle.save
        format.html { redirect_to @passenger_vehicle, notice: 'Passenger vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @passenger_vehicle }
      else
        format.html { render :new }
        format.json { render json: @passenger_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /passenger_vehicles/1
  # PATCH/PUT /passenger_vehicles/1.json
  def update
    respond_to do |format|
      if @passenger_vehicle.update(passenger_vehicle_params)
        format.html { redirect_to @passenger_vehicle, notice: 'Passenger vehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @passenger_vehicle }
      else
        format.html { render :edit }
        format.json { render json: @passenger_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /passenger_vehicles/1
  # DELETE /passenger_vehicles/1.json
  def destroy
    @passenger_vehicle.destroy
    respond_to do |format|
      format.html { redirect_to passenger_vehicles_url, notice: 'Passenger vehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_passenger_vehicle
      @passenger_vehicle = PassengerVehicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def passenger_vehicle_params
      params.require(:passenger_vehicle).permit(:name, :introduction, :image)
    end
end
