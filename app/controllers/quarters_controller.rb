class QuartersController < ApplicationController
  # GET /seats
  # GET /seats.json
  def index
    # @quarters_types = @quarters.map{|x| x.room_type}.uniq
    @quarters_info = Quarter.find(:all, :select => 'DISTINCT room_type, room_image, room_description')

    respond_to do |format|
      format.js
    end
  end

  # GET /seats/1
  # GET /seats/1.json
  def show
    @quarter = Quarter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.js
    end
  end

  # GET /seats/new
  # GET /seats/new.json
  def new
    @quarter = Quarter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @quarter }
    end
  end

  # GET /seats/1/edit
  def edit
    @quarter = Quarter.find(params[:id])
  end

  # POST /seats
  # POST /seats.json
  def create
    @quarter = Quarter.new(params[:seat])

    respond_to do |format|
      if @quarter.save
        format.html { redirect_to @quarter, notice: 'Quarter was successfully created.' }
        format.json { render json: @quarter, status: :created, location: @quarter }
      else
        format.html { render action: "new" }
        format.json { render json: @quarter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /seats/1
  # PUT /seats/1.json
  def update
    @quarter = Quarter.find(params[:id])

    respond_to do |format|
      if @quarter.update_attributes(params[:quarter])
        format.html { redirect_to @quarter, notice: 'Quarter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @quarter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seats/1
  # DELETE /seats/1.json
  def destroy
    @quarter = Quarter.find(params[:id])
    @quarter.destroy

    respond_to do |format|
      format.html { redirect_to quarter_url }
      format.json { head :no_content }
    end
  end
end
