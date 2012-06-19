
class ScorecastsController < ApplicationController
  # GET /scorecasts
  # GET /scorecasts.json
  def index
    @scorecasts = Scorecast.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scorecasts }
    end
  end

  # GET /scorecasts/1
  # GET /scorecasts/1.json
  def show
    @scorecast = Scorecast.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scorecast }
    end
  end

  # GET /scorecasts/new
  # GET /scorecasts/new.json
  def new
    @scorecast = Scorecast.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scorecast }
    end
  end

  # GET /scorecasts/1/edit
  def edit
    @scorecast = Scorecast.find(params[:id])
  end

  # POST /scorecasts
  # POST /scorecasts.json
  def create
    @scorecast = Scorecast.new(params[:scorecast])

    respond_to do |format|
      if @scorecast.save
        format.html { redirect_to @scorecast, notice: 'Scorecast was successfully created.' }
        format.json { render json: @scorecast, status: :created, location: @scorecast }
      else
        format.html { render action: "new" }
        format.json { render json: @scorecast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scorecasts/1
  # PUT /scorecasts/1.json
  def update
    @scorecast = Scorecast.find(params[:id])

    respond_to do |format|
      if @scorecast.update_attributes(params[:scorecast])
        format.html { redirect_to @scorecast, notice: 'Scorecast was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scorecast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scorecasts/1
  # DELETE /scorecasts/1.json
  def destroy
    @scorecast = Scorecast.find(params[:id])
    @scorecast.destroy

    respond_to do |format|
      format.html { redirect_to scorecasts_url }
      format.json { head :no_content }
    end
  end
end
