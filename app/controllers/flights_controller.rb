class FlightsController < ApplicationController
  skip_before_filter :require_login

  # GET /flights
  # GET /flights.json
  def index

    @flights = Flight.all
    @launching_locations = Location.all.select{ |x| x.launched_flights.any? }
    @docking_locations = Location.all.select{ |x| x.docked_flights.any? }


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @flights }
    end
  end


  def search
     date_string = params[:date]
     # starting_pt = params[:launching_from_id]
     @weekd =  Date.parse(date_string).strftime("%A")
     @weekd_id = Weekday.where(name: @weekd).first.id
     @launch = params[:launching_from_id]
     @dock = params[:docking_at_id]
     @results = Flight.where(:launch_day_id => @weekd_id, :launching_from_id => @launch, :docking_at_id => @dock)
     @quarters_types = Quarter.find(:all, :select => 'DISTINCT room_type')

  end

  # GET /flights/1
  # GET /flights/1.json
  def show
    @flight = Flight.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @flight }
    end
  end

  # GET /flights/new
  # GET /flights/new.json
  def new
    @flight = Flight.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @flight }
    end
  end

  # GET /flights/1/edit
  def edit
    @flight = Flight.find(params[:id])
  end

  # POST /flights
  # POST /flights.json
  def create
    @flight = Flight.new(params[:flight])

    respond_to do |format|
      if @flight.save
        format.html { redirect_to @flight, notice: 'Flight was successfully created.' }
        format.json { render json: @flight, status: :created, location: @flight }
      else
        format.html { render action: "new" }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /flights/1
  # PUT /flights/1.json
  def update
    @flight = Flight.find(params[:id])

    respond_to do |format|
      if @flight.update_attributes(params[:flight])
        format.html { redirect_to @flight, notice: 'Flight was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flights/1
  # DELETE /flights/1.json
  def destroy
    @flight = Flight.find(params[:id])
    @flight.destroy

    respond_to do |format|
      format.html { redirect_to flights_url }
      format.json { head :no_content }
    end
  end
end
