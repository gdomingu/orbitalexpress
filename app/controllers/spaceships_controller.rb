class SpaceshipsController < ApplicationController
  # GET /spaceships
  # GET /spaceships.json
  def index
    @spaceships = Spaceship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spaceships }
    end
  end

  # GET /spaceships/1
  # GET /spaceships/1.json
  def show
    @spaceship = Spaceship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @spaceship }
    end
  end

  # GET /spaceships/new
  # GET /spaceships/new.json
  def new
    @spaceship = Spaceship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @spaceship }
    end
  end

  # GET /spaceships/1/edit
  def edit
    @spaceship = Spaceship.find(params[:id])
  end

  # POST /spaceships
  # POST /spaceships.json
  def create
    @spaceship = Spaceship.new(params[:spaceship])

    respond_to do |format|
      if @spaceship.save
        format.html { redirect_to @spaceship, notice: 'Spaceship was successfully created.' }
        format.json { render json: @spaceship, status: :created, location: @spaceship }
      else
        format.html { render action: "new" }
        format.json { render json: @spaceship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spaceships/1
  # PUT /spaceships/1.json
  def update
    @spaceship = Spaceship.find(params[:id])

    respond_to do |format|
      if @spaceship.update_attributes(params[:spaceship])
        format.html { redirect_to @spaceship, notice: 'Spaceship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @spaceship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spaceships/1
  # DELETE /spaceships/1.json
  def destroy
    @spaceship = Spaceship.find(params[:id])
    @spaceship.destroy

    respond_to do |format|
      format.html { redirect_to spaceships_url }
      format.json { head :no_content }
    end
  end
end
