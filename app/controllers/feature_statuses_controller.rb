class FeatureStatusesController < ApplicationController
  # GET /feature_statuses
  # GET /feature_statuses.json
  def index
    @feature_statuses = FeatureStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @feature_statuses }
    end
  end

  # GET /feature_statuses/1
  # GET /feature_statuses/1.json
  def show
    @feature_status = FeatureStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @feature_status }
    end
  end

  # GET /feature_statuses/new
  # GET /feature_statuses/new.json
  def new
    @feature_status = FeatureStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @feature_status }
    end
  end

  # GET /feature_statuses/1/edit
  def edit
    @feature_status = FeatureStatus.find(params[:id])
  end

  # POST /feature_statuses
  # POST /feature_statuses.json
  def create
    @feature_status = FeatureStatus.new(params[:feature_status])

    respond_to do |format|
      if @feature_status.save
        format.html { redirect_to @feature_status, notice: 'Feature status was successfully created.' }
        format.json { render json: @feature_status, status: :created, location: @feature_status }
      else
        format.html { render action: "new" }
        format.json { render json: @feature_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /feature_statuses/1
  # PUT /feature_statuses/1.json
  def update
    @feature_status = FeatureStatus.find(params[:id])

    respond_to do |format|
      if @feature_status.update_attributes(params[:feature_status])
        format.html { redirect_to @feature_status, notice: 'Feature status was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @feature_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feature_statuses/1
  # DELETE /feature_statuses/1.json
  def destroy
    @feature_status = FeatureStatus.find(params[:id])
    @feature_status.destroy

    respond_to do |format|
      format.html { redirect_to feature_statuses_url }
      format.json { head :ok }
    end
  end
end
