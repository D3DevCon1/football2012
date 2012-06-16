
class GameweeksController < ApplicationController
  # GET /gameweeks
  # GET /gameweeks.json
  def index
    @gameweeks = Gameweek.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gameweeks }
    end
  end

  # GET /gameweeks/1
  # GET /gameweeks/1.json
  def show
    @gameweek = Gameweek.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gameweek }
    end
  end

  # GET /gameweeks/new
  # GET /gameweeks/new.json
  def new
    @gameweek = Gameweek.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gameweek }
    end
  end

  # GET /gameweeks/1/edit
  def edit
    @gameweek = Gameweek.find(params[:id])
  end

  # POST /gameweeks
  # POST /gameweeks.json
  def create
    @gameweek = Gameweek.new(params[:gameweek])

    respond_to do |format|
      if @gameweek.save
        format.html { redirect_to @gameweek, notice: 'Gameweek was successfully created.' }
        format.json { render json: @gameweek, status: :created, location: @gameweek }
      else
        format.html { render action: "new" }
        format.json { render json: @gameweek.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gameweeks/1
  # PUT /gameweeks/1.json
  def update
    @gameweek = Gameweek.find(params[:id])

    respond_to do |format|
      if @gameweek.update_attributes(params[:gameweek])
        format.html { redirect_to @gameweek, notice: 'Gameweek was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gameweek.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gameweeks/1
  # DELETE /gameweeks/1.json
  def destroy
    @gameweek = Gameweek.find(params[:id])
    @gameweek.destroy

    respond_to do |format|
      format.html { redirect_to gameweeks_url }
      format.json { head :no_content }
    end
  end
end
